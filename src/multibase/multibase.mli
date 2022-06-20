module Encoding = Encoding
module Base64 = Base64
module Base58 = Base58
module Base32 = Base32

val encode : Encoding.t -> string -> (string, [ `Msg of string ]) result
val decode : string -> (Encoding.t * string, [ `Msg of string ]) result
