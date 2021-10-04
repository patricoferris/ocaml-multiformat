type 'a ty = {
  of_bytes : bytes -> 'a;
  transcode_bytes : bytes -> bytes;
  of_cstruct : Cstruct.t -> 'a;
  to_cstruct : 'a -> Cstruct.t;
}

type t = T : 'a ty -> t

let ipv4 =
  let of_bytes b = Ipaddr.V4.of_string_exn (Bytes.to_string b) in
  let transcode_bytes b =
    Bytes.of_string @@ Ipaddr.V4.to_string
    @@ Ipaddr.V4.of_octets_exn (Bytes.to_string b)
  in
  let of_cstruct b = Ipaddr.V4.of_string_exn (Cstruct.to_string b) in
  let to_cstruct t = Cstruct.of_string (Ipaddr.V4.to_octets t) in
  T { of_bytes; transcode_bytes; of_cstruct; to_cstruct }

type port = int

let port =
  let of_bytes b = int_of_string (Bytes.to_string b) in
  let of_cstruct buff = Cstruct.BE.get_uint16 buff 0 in
  let transcode_bytes b =
    Bytes.of_string @@ string_of_int @@ of_cstruct (Cstruct.of_bytes b)
  in
  let to_cstruct i =
    let buff = Cstruct.create 2 in
    Cstruct.BE.set_uint16 buff 0 i;
    buff
  in
  T { of_bytes; transcode_bytes; of_cstruct; to_cstruct }

let identity =
  let of_bytes b = Cstruct.of_bytes b in
  let of_cstruct = Fun.id in
  let to_cstruct = Fun.id in
  T { of_bytes; transcode_bytes = Fun.id; of_cstruct; to_cstruct }
