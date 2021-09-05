module Uvarint = Uvarint
(** Unsigned Variable Length Integers *)

module Identifier : sig
  type t =
    [ `Identity
    | `Sha1
    | `Sha2_256
    | `Sha2_512
    | `Sha3_512
    | `Sha3_384
    | `Sha3_256
    | `Sha3_224
    | `Shake_128
    | `Shake_256
    | `Keccak_224
    | `Keccak_256
    | `Keccak_384
    | `Keccak_512
    | `Blake3
    | `Murmur3_128
    | `Murmur3_32
    | `Dbl_sha2_256
    | `Md4
    | `Md5
    | `Bmt
    | `Sha2_256_trunc254_padded
    | `Ripemd_128
    | `Ripemd_160
    | `Ripemd_256
    | `Ripemd_320
    | `X11
    | `Kangarootwelve
    | `Sm3_256
    | `Blake2b_8
    | `Blake2b_16
    | `Blake2b_24
    | `Blake2b_32
    | `Blake2b_40
    | `Blake2b_48
    | `Blake2b_56
    | `Blake2b_64
    | `Blake2b_72
    | `Blake2b_80
    | `Blake2b_88
    | `Blake2b_96
    | `Blake2b_104
    | `Blake2b_112
    | `Blake2b_120
    | `Blake2b_128
    | `Blake2b_136
    | `Blake2b_144
    | `Blake2b_152
    | `Blake2b_160
    | `Blake2b_168
    | `Blake2b_176
    | `Blake2b_184
    | `Blake2b_192
    | `Blake2b_200
    | `Blake2b_208
    | `Blake2b_216
    | `Blake2b_224
    | `Blake2b_232
    | `Blake2b_240
    | `Blake2b_248
    | `Blake2b_256
    | `Blake2b_264
    | `Blake2b_272
    | `Blake2b_280
    | `Blake2b_288
    | `Blake2b_296
    | `Blake2b_304
    | `Blake2b_312
    | `Blake2b_320
    | `Blake2b_328
    | `Blake2b_336
    | `Blake2b_344
    | `Blake2b_352
    | `Blake2b_360
    | `Blake2b_368
    | `Blake2b_376
    | `Blake2b_384
    | `Blake2b_392
    | `Blake2b_400
    | `Blake2b_408
    | `Blake2b_416
    | `Blake2b_424
    | `Blake2b_432
    | `Blake2b_440
    | `Blake2b_448
    | `Blake2b_456
    | `Blake2b_464
    | `Blake2b_472
    | `Blake2b_480
    | `Blake2b_488
    | `Blake2b_496
    | `Blake2b_504
    | `Blake2b_512
    | `Blake2s_8
    | `Blake2s_16
    | `Blake2s_24
    | `Blake2s_32
    | `Blake2s_40
    | `Blake2s_48
    | `Blake2s_56
    | `Blake2s_64
    | `Blake2s_72
    | `Blake2s_80
    | `Blake2s_88
    | `Blake2s_96
    | `Blake2s_104
    | `Blake2s_112
    | `Blake2s_120
    | `Blake2s_128
    | `Blake2s_136
    | `Blake2s_144
    | `Blake2s_152
    | `Blake2s_160
    | `Blake2s_168
    | `Blake2s_176
    | `Blake2s_184
    | `Blake2s_192
    | `Blake2s_200
    | `Blake2s_208
    | `Blake2s_216
    | `Blake2s_224
    | `Blake2s_232
    | `Blake2s_240
    | `Blake2s_248
    | `Blake2s_256
    | `Skein256_8
    | `Skein256_16
    | `Skein256_24
    | `Skein256_32
    | `Skein256_40
    | `Skein256_48
    | `Skein256_56
    | `Skein256_64
    | `Skein256_72
    | `Skein256_80
    | `Skein256_88
    | `Skein256_96
    | `Skein256_104
    | `Skein256_112
    | `Skein256_120
    | `Skein256_128
    | `Skein256_136
    | `Skein256_144
    | `Skein256_152
    | `Skein256_160
    | `Skein256_168
    | `Skein256_176
    | `Skein256_184
    | `Skein256_192
    | `Skein256_200
    | `Skein256_208
    | `Skein256_216
    | `Skein256_224
    | `Skein256_232
    | `Skein256_240
    | `Skein256_248
    | `Skein256_256
    | `Skein512_8
    | `Skein512_16
    | `Skein512_24
    | `Skein512_32
    | `Skein512_40
    | `Skein512_48
    | `Skein512_56
    | `Skein512_64
    | `Skein512_72
    | `Skein512_80
    | `Skein512_88
    | `Skein512_96
    | `Skein512_104
    | `Skein512_112
    | `Skein512_120
    | `Skein512_128
    | `Skein512_136
    | `Skein512_144
    | `Skein512_152
    | `Skein512_160
    | `Skein512_168
    | `Skein512_176
    | `Skein512_184
    | `Skein512_192
    | `Skein512_200
    | `Skein512_208
    | `Skein512_216
    | `Skein512_224
    | `Skein512_232
    | `Skein512_240
    | `Skein512_248
    | `Skein512_256
    | `Skein512_264
    | `Skein512_272
    | `Skein512_280
    | `Skein512_288
    | `Skein512_296
    | `Skein512_304
    | `Skein512_312
    | `Skein512_320
    | `Skein512_328
    | `Skein512_336
    | `Skein512_344
    | `Skein512_352
    | `Skein512_360
    | `Skein512_368
    | `Skein512_376
    | `Skein512_384
    | `Skein512_392
    | `Skein512_400
    | `Skein512_408
    | `Skein512_416
    | `Skein512_424
    | `Skein512_432
    | `Skein512_440
    | `Skein512_448
    | `Skein512_456
    | `Skein512_464
    | `Skein512_472
    | `Skein512_480
    | `Skein512_488
    | `Skein512_496
    | `Skein512_504
    | `Skein512_512
    | `Skein1024_8
    | `Skein1024_16
    | `Skein1024_24
    | `Skein1024_32
    | `Skein1024_40
    | `Skein1024_48
    | `Skein1024_56
    | `Skein1024_64
    | `Skein1024_72
    | `Skein1024_80
    | `Skein1024_88
    | `Skein1024_96
    | `Skein1024_104
    | `Skein1024_112
    | `Skein1024_120
    | `Skein1024_128
    | `Skein1024_136
    | `Skein1024_144
    | `Skein1024_152
    | `Skein1024_160
    | `Skein1024_168
    | `Skein1024_176
    | `Skein1024_184
    | `Skein1024_192
    | `Skein1024_200
    | `Skein1024_208
    | `Skein1024_216
    | `Skein1024_224
    | `Skein1024_232
    | `Skein1024_240
    | `Skein1024_248
    | `Skein1024_256
    | `Skein1024_264
    | `Skein1024_272
    | `Skein1024_280
    | `Skein1024_288
    | `Skein1024_296
    | `Skein1024_304
    | `Skein1024_312
    | `Skein1024_320
    | `Skein1024_328
    | `Skein1024_336
    | `Skein1024_344
    | `Skein1024_352
    | `Skein1024_360
    | `Skein1024_368
    | `Skein1024_376
    | `Skein1024_384
    | `Skein1024_392
    | `Skein1024_400
    | `Skein1024_408
    | `Skein1024_416
    | `Skein1024_424
    | `Skein1024_432
    | `Skein1024_440
    | `Skein1024_448
    | `Skein1024_456
    | `Skein1024_464
    | `Skein1024_472
    | `Skein1024_480
    | `Skein1024_488
    | `Skein1024_496
    | `Skein1024_504
    | `Skein1024_512
    | `Skein1024_520
    | `Skein1024_528
    | `Skein1024_536
    | `Skein1024_544
    | `Skein1024_552
    | `Skein1024_560
    | `Skein1024_568
    | `Skein1024_576
    | `Skein1024_584
    | `Skein1024_592
    | `Skein1024_600
    | `Skein1024_608
    | `Skein1024_616
    | `Skein1024_624
    | `Skein1024_632
    | `Skein1024_640
    | `Skein1024_648
    | `Skein1024_656
    | `Skein1024_664
    | `Skein1024_672
    | `Skein1024_680
    | `Skein1024_688
    | `Skein1024_696
    | `Skein1024_704
    | `Skein1024_712
    | `Skein1024_720
    | `Skein1024_728
    | `Skein1024_736
    | `Skein1024_744
    | `Skein1024_752
    | `Skein1024_760
    | `Skein1024_768
    | `Skein1024_776
    | `Skein1024_784
    | `Skein1024_792
    | `Skein1024_800
    | `Skein1024_808
    | `Skein1024_816
    | `Skein1024_824
    | `Skein1024_832
    | `Skein1024_840
    | `Skein1024_848
    | `Skein1024_856
    | `Skein1024_864
    | `Skein1024_872
    | `Skein1024_880
    | `Skein1024_888
    | `Skein1024_896
    | `Skein1024_904
    | `Skein1024_912
    | `Skein1024_920
    | `Skein1024_928
    | `Skein1024_936
    | `Skein1024_944
    | `Skein1024_952
    | `Skein1024_960
    | `Skein1024_968
    | `Skein1024_976
    | `Skein1024_984
    | `Skein1024_992
    | `Skein1024_1000
    | `Skein1024_1008
    | `Skein1024_1016
    | `Skein1024_1024
    | `Poseidon_bls12_381_a2_fc1
    | `Poseidon_bls12_381_a2_fc1_sc ]

  val to_int : t -> int
  (** [to_int t] converts to the integer representation *)

  val of_int_exn : int -> t
  (** [of_int_exn i] tries to convert [i] to the hash identifier *)

  val of_int : int -> (t, [ `Msg of string ]) result
  (** Like {! of_int_exn} except using {! result} type *)

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
