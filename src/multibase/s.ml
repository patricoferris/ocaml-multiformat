module type Base = sig
  type alphabet

  val decode :
    ?pad:bool ->
    ?alphabet:alphabet ->
    ?off:int ->
    ?len:int ->
    string ->
    (string, [> `Msg of string ]) result

  val encode :
    ?pad:bool ->
    ?alphabet:alphabet ->
    ?off:int ->
    ?len:int ->
    string ->
    (string, [> `Msg of string ]) result
end
