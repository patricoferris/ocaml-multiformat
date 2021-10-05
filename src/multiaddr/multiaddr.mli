module Proto : sig
  type t = Multicodec.multiaddr
  (** Different protocols *)

  type size = Int of int | Variable

  val size : t -> size

  val to_int : t -> int
  (** Convert a protocol to its code *)

  val to_string : t -> string
  (** Convert the protocol to a string according to the spec. *)

  val of_int_exn : int -> t
  (** Convert from code to protocol, raises [Invalid_argument] *)

  val of_int : int -> (t, [ `Msg of string ]) result
  (** Same as {!of_int_exn} but wraps returned value in result *)

  val of_string_exn : string -> t
  (** Convert a string to a protocol, raises [Invalid_argument] if it can't *)

  val of_string : string -> (t, [ `Msg of string ]) result
  (** Like {! of_string_exn} except it wraps the return value in a [result] *)
end

module Addr : sig
  type t
  (** Segments of the multiaddr *)

  val v : ?is_transcoded:bool -> Proto.t -> bytes -> t
  (** Construct a segment *)

  val proto : t -> Proto.t
  (** Extract the protocol *)

  val value : t -> bytes
  (** Extract the value *)

  val to_string : t -> string
  (** Human-readble string format *)

  val to_cstruct : t -> Cstruct.t
  (** Encoded using {! Uvarint} to bytes *)
end

type t
(** Multiaddr type *)

val of_string : string -> (t, [ `Msg of string ]) result
(** Construct a multiaddr from a string *)

val of_string_exn : string -> t
(** Same as {! of_string} but raises an exception *)

val to_string : t -> string
(** Human-readble string format *)

val to_list : t -> Addr.t list
(** Get each segment of the multiaddr *)

val of_cstruct :
  ?is_transcoded:bool -> Cstruct.t -> (t, [ `Msg of string ]) result
(** Reconstruct a mutliaddr from a {! Cstruct.t} *)

val to_cstruct : t -> Cstruct.t
(** Encoded using {! Uvarint} to bytes *)

val pp_human : t Fmt.t
(** Print the multiaddr in a human-readble format *)

val pp_machine : t Fmt.t
(** Print the multiaddr in a machine format *)

val equal : t -> t -> bool
(** [equal a b] compares two multi-addresses, using {! Stdlib.( = )} won't necessarily work! *)

val encapsulate : t -> t -> t
(** Encapsulates one multaddr in another *)

val decapsulate : t -> t -> t option
(** Tries to decapsulate a multiaddr with another, if it can't then an error is returned *)
