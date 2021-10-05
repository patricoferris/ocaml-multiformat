module Uvarint = Uvarint
(** Unsigned Variable Length Integers *)

module Identifier : sig
  type t = Multicodec.multihash

  val to_int : t -> int
  (** [to_int t] converts to the integer representation *)

  val of_int_exn : int -> t
  (** [of_int_exn i] tries to convert [i] to the hash identifier *)

  val of_int : int -> t option
  (** Like {! of_int_exn} except using {! option} type *)

  val to_string : t -> string
  (** [to_string ident] converts the identifier [ident] to a human-readable string *)

  val is_deprecated : t -> bool
  (** [is_deprecated t] tells you if the hash function is deprecated or not (like [md5]) *)
end

type 'a res = ('a, [ `Unsupported | `Msg of string ]) result

module S : sig
  module type Hasher = sig
    val digest : Identifier.t -> string -> Cstruct.t res
    (** [digest ident v] should digest [v] using the hash function related to [ident] *)

    val is_supported : Identifier.t -> bool
    (** A subset of {! Identifier.t} that this hasher supports *)
  end
end

module Make : functor (H : S.Hasher) -> sig
  type t
  (** The type for multihashes *)

  val v : ident:Identifier.t -> string -> t res
  (** Constructs a multihash *)

  val make : ident:Identifier.t -> length:int -> digest:Cstruct.t -> t
  (** Makes multihashes -- useful for testing *)

  val get_ident : t -> Identifier.t
  (** Accessor for the identifier of this multihash *)

  val get_length : t -> int
  (** Accessor for the length of this multihash *)

  val get_digest : t -> Cstruct.t
  (** Accessor for the digest of this multihash *)

  val to_cstruct : t -> Cstruct.t

  val of_cstruct : Cstruct.t -> (t, [ `Msg of string ]) result

  val pp : t Fmt.t

  val equal : t -> t -> bool
end
