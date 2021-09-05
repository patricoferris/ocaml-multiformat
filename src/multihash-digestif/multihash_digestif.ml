module Hasher = struct
  open Digestif

  let digest_cstruct hash f v = f v |> to_raw_string hash |> Cstruct.of_string

  let digest ident v =
    match ident with
    | `Identity -> Ok Cstruct.empty
    | `Blake2b_64 -> Ok (digest_cstruct blake2b (digest_string blake2b) v)
    | `Blake2s_64 -> Ok (digest_cstruct blake2s (digest_string blake2s) v)
    | `Sha1 -> Ok (digest_cstruct sha1 (digest_string sha1) v)
    | `Sha2_256 -> Ok (digest_cstruct sha256 (digest_string sha256) v)
    | `Sha2_512 -> Ok (digest_cstruct sha512 (digest_string sha512) v)
    | `Sha3_224 -> Ok (digest_cstruct sha3_224 (digest_string sha3_224) v)
    | `Sha3_256 -> Ok (digest_cstruct sha3_256 (digest_string sha3_256) v)
    | `Sha3_384 -> Ok (digest_cstruct sha3_384 (digest_string sha3_384) v)
    | `Sha3_512 -> Ok (digest_cstruct sha3_512 (digest_string sha3_512) v)
    | `Md5 -> Ok (digest_cstruct md5 (digest_string md5) v)
    | _ -> Error `Unsupported

  let is_supported = function
    | `Identity -> true
    | `Blake2b_64 -> true
    | `Blake2s_64 -> true
    | `Sha1 -> true
    | `Sha2_256 -> true
    | `Sha2_512 -> true
    | `Sha3_224 -> true
    | `Sha3_256 -> true
    | `Sha3_384 -> true
    | `Sha3_512 -> true
    | `Md5 -> true
    | _ -> false
end

include Multihash.Make (Hasher)
