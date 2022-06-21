include Multihash_intf

module Make (H : Hasher) = struct
  type t = { ident : Multicodec.multihash; length : int; digest : Cstruct.t }

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
    let ident = Uvarint.encode (Multicodec.multihash_to_code ident) in
    let length = Uvarint.encode length in
    ident <+> length <+> digest

  let of_cstruct buff =
    let l = Cstruct.length buff in
    let ident, len = Uvarint.decode buff in
    let length, len' = Uvarint.decode (Cstruct.sub buff len (l - len)) in
    match Multicodec.multihash_of_code ident with
    | Some ident ->
        Ok
          {
            ident;
            length;
            digest = Cstruct.sub buff (len + len') (l - len - len');
          }
    | None ->
        Error
          (`Msg ("Unknown idenfitifer for multihash: " ^ string_of_int ident))

  let pp ppf { ident; length; digest } =
    Fmt.pf ppf "ident(%s) length(%i) digest(%a)"
      (Multicodec.multihash_to_string ident)
      length Cstruct.hexdump_pp digest

  let equal a b =
    a.ident = b.ident && a.length = b.length && Cstruct.equal a.digest b.digest
end
