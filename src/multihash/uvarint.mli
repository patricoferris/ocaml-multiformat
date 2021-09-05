type t = int

val encode : t -> Cstruct.t
(** Encode an integer as a varint *)

val decode : Cstruct.t -> t
(** Deocode an integer as a varint *)
