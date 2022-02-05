module Uvarint = Uvarint

module Identifier = struct
  type t = Multicodec.multihash

  let to_int = Multicodec.multihash_to_code

  let of_int = Multicodec.multihash_of_code

  let of_int_exn v = Multicodec.multihash_of_code v |> Option.get

  let to_string = Multicodec.multihash_to_string

  let is_deprecated = function `Md4 | `Md5 -> true | _ -> false
end

type 'a res = ('a, [ `Unsupported | `Msg of string ]) result

module S = struct
  module type Hasher = sig
    val digest : Identifier.t -> string -> Cstruct.t res

    val is_supported : Identifier.t -> bool
  end
end

module Make (H : S.Hasher) = struct
  type t = { ident : Identifier.t; length : int; digest : Cstruct.t }

  let v ~ident v =
    Result.map
      (fun digest ->
        let length = Cstruct.length digest in
        { ident; length; digest })
      (H.digest ident v)

  let make ~ident ~length ~digest = { ident; length; digest }

  let get_ident { ident; _ } = ident

  let get_length { length; _ } = length

  let get_digest { digest; _ } = digest

  let to_cstruct { ident; length; digest } =
    let ( <+> ) = Cstruct.append in
    let ident = Uvarint.encode (Identifier.to_int ident) in
    let length = Uvarint.encode length in
    ident <+> length <+> digest

  let of_cstruct buff =
    let l = Cstruct.length buff in
    let ident, len = Uvarint.decode buff in
    let length, len' = Uvarint.decode (Cstruct.sub buff len (l - len)) in
    match Identifier.of_int ident with
    | Some ident ->
        Ok
          {
            ident;
            length;
            digest = Cstruct.sub buff (len + len') (l - len - len');
          }
    | None -> Error (`Msg ("Unknown idenfitifer for multihash: " ^ string_of_int ident))

  let pp ppf { ident; length; digest } =
    Fmt.pf ppf "ident(%i) length(%i) digest(%a)" (Identifier.to_int ident)
      length Cstruct.hexdump_pp digest

  let equal a b =
    a.ident = b.ident && a.length = b.length && Cstruct.equal a.digest b.digest
end
