module Encoding = Encoding

val encode : Encoding.t -> string -> (string, [ `Msg of string ]) result

val decode : string -> (Encoding.t * string, [ `Msg of string ]) result
