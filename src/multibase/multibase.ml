module Encoding = Encoding

let encode_t t s =
  match t with
  | `Base32hex -> Base32.encode ~pad:false ~alphabet:Base32.extended_hex s
  | `Base32hexpad -> Base32.encode ~pad:true ~alphabet:Base32.extended_hex s
  | `Base32 -> Base32.encode ~pad:false s
  | `Base32pad -> Base32.encode ~pad:true s
  | `Base58btc -> Ok (Base58.encode ~alphabet:Base58.default_alphabet s)
  | `Base58flickr -> Ok (Base58.encode ~alphabet:Base58.flickr_alphabet s)
  | `Base64 -> Base64.encode ~pad:false s
  | `Base64pad -> Base64.encode ~pad:true s
  | `Base64url -> Base64.encode ~pad:false ~alphabet:Base64.uri_safe_alphabet s
  | `Base64urlpad ->
      Base64.encode ~pad:true ~alphabet:Base64.uri_safe_alphabet s
  | _ -> Error (`Msg "Unsupported base encoding")

let decode_t t s =
  match t with
  | `Base32hex -> Base32.decode ~pad:false ~alphabet:Base32.extended_hex s
  | `Base32hexpad -> Base32.decode ~pad:true ~alphabet:Base32.extended_hex s
  | `Base32 -> Base32.decode ~pad:false s
  | `Base32pad -> Base32.decode ~pad:true s
  | `Base58btc -> Ok (Base58.decode ~alphabet:Base58.default_alphabet s)
  | `Base58flickr -> Ok (Base58.decode ~alphabet:Base58.flickr_alphabet s)
  | `Base64 -> Base64.decode ~pad:false s
  | `Base64pad -> Base64.decode ~pad:true s
  | `Base64url -> Base64.decode ~pad:false ~alphabet:Base64.uri_safe_alphabet s
  | `Base64urlpad ->
      Base64.decode ~pad:true ~alphabet:Base64.uri_safe_alphabet s
  | _ -> Error (`Msg "Unsupported base encoding")

let encode t s = Result.map (fun v -> Encoding.to_code t ^ v) (encode_t t s)

let decode s =
  let e, rest = String.(make 1 @@ get s 0, sub s 1 (length s - 2)) in
  match Encoding.of_code e with
  | Some t ->
      Result.map (fun v -> (t, Encoding.to_code t ^ v)) (decode_t t rest)
  | None -> Error (`Msg "Unknown code")
