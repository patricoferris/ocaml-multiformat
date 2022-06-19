let ( <+> ) = Cstruct.append
let ( >>= ) v f = Result.bind v f

module Proto = struct
  type t = Multicodec.multiaddr

  let to_int = Multicodec.multiaddr_to_code
  let of_int_exn t = Multicodec.multiaddr_of_code t |> Option.get

  let of_int s =
    try Ok (of_int_exn s)
    with Invalid_argument s -> Error (`Msg ("Unknown proto: " ^ s))

  let transcoder (t : t) : Transcoder.t =
    match t with
    | `Ip4 -> Transcoder.ipv4
    | `Udp | `Tcp -> Transcoder.port
    | _ -> Transcoder.identity

  type size = Int of int | Variable

  let size : t -> size = function
    | `Ip4 -> Int 32
    | `Tcp -> Int 16
    | `Udp -> Int 16
    | `Dccp -> Int 16
    | `Ip6 -> Int 128
    | `Ip6zone -> Variable
    | `Dns -> Variable
    | `Dns4 -> Variable
    | `Dns6 -> Variable
    | `Dnsaddr -> Variable
    | `Sctp -> Int 16
    | `Udt -> Int 0
    | `Utp -> Int 0
    | `Unix -> Variable
    | `P2p -> Variable
    | `Onion -> Int 96
    | `Onion3 -> Int 296
    | `Garlic64 -> Variable
    | `Garlic32 -> Variable
    | `Tls -> Int 0
    | `Noise -> Int 0
    | `Quic -> Int 0
    | `Http -> Int 0
    | `Https -> Int 0
    | `Ws -> Int 0
    | `Wss -> Int 0
    | `P2p_websocket_star -> Int 0
    | `P2p_stardust -> Int 0
    | `P2p_webrtc_star -> Int 0
    | `P2p_webrtc_direct -> Int 0
    | `P2p_circuit -> Int 0
    | _ -> Variable
  (* Check *)

  let to_string = Multicodec.multiaddr_to_string
  let of_string_exn t = Multicodec.multiaddr_of_string t |> Option.get

  let of_string s =
    try Ok (of_string_exn s)
    with Invalid_argument s -> Error (`Msg ("Unknown proto: " ^ s))
end

module Addr = struct
  type t = { is_transcoded : bool; proto : Proto.t; value : bytes }

  let v ?(is_transcoded = false) proto value = { is_transcoded; proto; value }
  let proto { proto; _ } = proto
  let value { value; _ } = value

  let convert proto value =
    match Proto.transcoder proto with
    | T { transcode_bytes; _ } -> transcode_bytes value

  let to_string { proto; value; is_transcoded } =
    let value = if is_transcoded then convert proto value else value in
    "/" ^ Proto.to_string proto ^ "/" ^ Bytes.to_string value

  let to_cstruct { proto; value; is_transcoded } =
    let proto' = Proto.to_int proto |> Uvarint.encode in
    let length = Bytes.length value |> Uvarint.encode in
    let value =
      if is_transcoded then Cstruct.of_bytes value
      else
        match Proto.transcoder proto with
        | T { of_bytes; to_cstruct; _ } -> of_bytes value |> to_cstruct
    in
    match Proto.size proto with
    | Int _ -> proto' <+> value
    | _ -> proto' <+> length <+> value
end

type t = Single of Addr.t | Cons of Addr.t * t

let of_string s =
  let get_first = function
    | proto :: value :: rest -> Ok ((proto, value), rest)
    | _ -> Error (`Msg "Bad multiaddr getting first segment")
  in
  let segments =
    match String.split_on_char '/' s with
    | "" :: segments -> Ok segments
    | _ -> Error (`Msg "Expected multiaddr to start with /")
  in
  let rec aux acc = function
    | proto :: value :: res ->
        Proto.of_string proto >>= fun proto ->
        let value = Bytes.of_string value in
        aux (Cons (Addr.v proto value, acc)) res
    | [] -> Ok acc
    | s -> Error (`Msg ("Bad multiaddr: " ^ String.concat "/" s))
  in
  segments >>= get_first >>= fun ((p, v), rest) ->
  Proto.of_string p >>= fun proto ->
  aux (Single (Addr.v proto (Bytes.of_string v))) rest

let of_string_exn s =
  match of_string s with Ok v -> v | Error (`Msg m) -> failwith m

let of_cstruct ?is_transcoded buff =
  let length = Cstruct.length buff in
  let read_segment buff =
    let l = Cstruct.length buff in
    let proto, read = Uvarint.decode buff in
    Proto.of_int proto >>= fun proto ->
    match Proto.size proto with
    | Int i ->
        let b = i / 8 in
        let value = Cstruct.sub buff read b in
        Ok (Addr.v ?is_transcoded proto (Cstruct.to_bytes value), read + b)
    | Variable ->
        let len, read' = Uvarint.decode (Cstruct.sub buff read (l - read)) in
        let value = Cstruct.sub buff (read + read') len in
        Ok
          ( Addr.v ?is_transcoded proto (Cstruct.to_bytes value),
            read + read' + len )
  in
  let rec aux acc off buff =
    if off >= length then Ok acc
    else
      read_segment (Cstruct.sub buff off (length - off)) >>= fun (m, r) ->
      aux (m :: acc) (off + r) buff
  in
  match Result.map List.rev @@ aux [] 0 buff with
  | Ok [] -> Error (`Msg "Empty multiaddr")
  | Ok (m :: ms) ->
      Ok (List.fold_left (fun acc v -> Cons (v, acc)) (Single m) ms)
  | Error _ as e -> e

let rec fold_left f accu l =
  match l with
  | Single m -> f accu m
  | Cons (m, ms) -> fold_left f (f accu m) ms

let to_string = fold_left (fun acc m -> Addr.to_string m ^ acc) ""
let to_list = fold_left (fun acc m -> m :: acc) []

let rec of_list = function
  | [] -> raise (Invalid_argument "Multiaddr.t cannot be empty")
  | [ m ] -> Single m
  | m :: ms -> Cons (m, of_list ms)

let to_cstruct =
  fold_left (fun acc m -> Addr.to_cstruct m <+> acc) Cstruct.empty

let pp_human ppf t = Fmt.pf ppf "%s" (to_string t)
let pp_machine ppf t = Fmt.pf ppf "%a" Cstruct.hexdump_pp (to_cstruct t)
let equal a b = String.equal (to_string a) (to_string b)

let encapsulate t v =
  let addrs = to_list t in
  let addrs' = to_list v in
  of_list (List.rev @@ addrs @ addrs')

let decapsulate t v =
  let rec sub_equal acc a b =
    match (a, b) with
    | [ f1 ], [ f2 ] -> if f1 = f2 then acc else []
    | f1 :: t1, [ f2 ] ->
        if f2 = f1 then acc else sub_equal (f1 :: acc) t1 [ f2 ]
    | f1 :: t1, (f2 :: t2 as c) ->
        if f1 = f2 then sub_equal acc t1 t2 else sub_equal (f1 :: acc) t1 c
    | _ -> []
  in
  Some (sub_equal [] (to_list t) (to_list v) |> of_list)
