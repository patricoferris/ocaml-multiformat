module Uvarint = Uvarint
(** Unsigned Variable Length Integers *)

type 'a res = ('a, [ `Unsupported | `Msg of string ]) result

module type Hasher = sig
  val digest : Multicodec.multihash -> string -> Cstruct.t res
  (** [digest ident v] should digest [v] using the hash function related to [ident] *)

  val is_supported : Multicodec.multihash -> bool
  (** A subset of {! Identifier.t} that this hasher supports *)
end

module type S = sig
  type t
  (** The type for multihashes *)

  val v : ident:Multicodec.multihash -> string -> t res
  (** Constructs a multihash *)

  val make : ident:Multicodec.multihash -> length:int -> digest:Cstruct.t -> t
  (** Makes multihashes -- useful for testing *)

  val get_ident : t -> Multicodec.multihash
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

module type Maker = functor (H : Hasher) -> S

module type Intf = sig
  module type S = S
  module type Hasher = Hasher
  module type Maker = Maker

  module Make : Maker
end
