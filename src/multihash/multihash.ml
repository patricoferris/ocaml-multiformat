module Uvarint = Uvarint

module Identifier = struct
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

  let to_int = function
    | `Identity -> 0x00
    | `Sha1 -> 0x11
    | `Sha2_256 -> 0x12
    | `Sha2_512 -> 0x13
    | `Sha3_512 -> 0x14
    | `Sha3_384 -> 0x15
    | `Sha3_256 -> 0x16
    | `Sha3_224 -> 0x17
    | `Shake_128 -> 0x18
    | `Shake_256 -> 0x19
    | `Keccak_224 -> 0x1a
    | `Keccak_256 -> 0x1b
    | `Keccak_384 -> 0x1c
    | `Keccak_512 -> 0x1d
    | `Blake3 -> 0x1e
    | `Murmur3_128 -> 0x22
    | `Murmur3_32 -> 0x23
    | `Dbl_sha2_256 -> 0x56
    | `Md4 -> 0xd4
    | `Md5 -> 0xd5
    | `Bmt -> 0xd6
    | `Sha2_256_trunc254_padded -> 0x1012
    | `Ripemd_128 -> 0x1052
    | `Ripemd_160 -> 0x1053
    | `Ripemd_256 -> 0x1054
    | `Ripemd_320 -> 0x1055
    | `X11 -> 0x1100
    | `Kangarootwelve -> 0x1d01
    | `Sm3_256 -> 0x534d
    | `Blake2b_8 -> 0xb201
    | `Blake2b_16 -> 0xb202
    | `Blake2b_24 -> 0xb203
    | `Blake2b_32 -> 0xb204
    | `Blake2b_40 -> 0xb205
    | `Blake2b_48 -> 0xb206
    | `Blake2b_56 -> 0xb207
    | `Blake2b_64 -> 0xb208
    | `Blake2b_72 -> 0xb209
    | `Blake2b_80 -> 0xb20a
    | `Blake2b_88 -> 0xb20b
    | `Blake2b_96 -> 0xb20c
    | `Blake2b_104 -> 0xb20d
    | `Blake2b_112 -> 0xb20e
    | `Blake2b_120 -> 0xb20f
    | `Blake2b_128 -> 0xb210
    | `Blake2b_136 -> 0xb211
    | `Blake2b_144 -> 0xb212
    | `Blake2b_152 -> 0xb213
    | `Blake2b_160 -> 0xb214
    | `Blake2b_168 -> 0xb215
    | `Blake2b_176 -> 0xb216
    | `Blake2b_184 -> 0xb217
    | `Blake2b_192 -> 0xb218
    | `Blake2b_200 -> 0xb219
    | `Blake2b_208 -> 0xb21a
    | `Blake2b_216 -> 0xb21b
    | `Blake2b_224 -> 0xb21c
    | `Blake2b_232 -> 0xb21d
    | `Blake2b_240 -> 0xb21e
    | `Blake2b_248 -> 0xb21f
    | `Blake2b_256 -> 0xb220
    | `Blake2b_264 -> 0xb221
    | `Blake2b_272 -> 0xb222
    | `Blake2b_280 -> 0xb223
    | `Blake2b_288 -> 0xb224
    | `Blake2b_296 -> 0xb225
    | `Blake2b_304 -> 0xb226
    | `Blake2b_312 -> 0xb227
    | `Blake2b_320 -> 0xb228
    | `Blake2b_328 -> 0xb229
    | `Blake2b_336 -> 0xb22a
    | `Blake2b_344 -> 0xb22b
    | `Blake2b_352 -> 0xb22c
    | `Blake2b_360 -> 0xb22d
    | `Blake2b_368 -> 0xb22e
    | `Blake2b_376 -> 0xb22f
    | `Blake2b_384 -> 0xb230
    | `Blake2b_392 -> 0xb231
    | `Blake2b_400 -> 0xb232
    | `Blake2b_408 -> 0xb233
    | `Blake2b_416 -> 0xb234
    | `Blake2b_424 -> 0xb235
    | `Blake2b_432 -> 0xb236
    | `Blake2b_440 -> 0xb237
    | `Blake2b_448 -> 0xb238
    | `Blake2b_456 -> 0xb239
    | `Blake2b_464 -> 0xb23a
    | `Blake2b_472 -> 0xb23b
    | `Blake2b_480 -> 0xb23c
    | `Blake2b_488 -> 0xb23d
    | `Blake2b_496 -> 0xb23e
    | `Blake2b_504 -> 0xb23f
    | `Blake2b_512 -> 0xb240
    | `Blake2s_8 -> 0xb241
    | `Blake2s_16 -> 0xb242
    | `Blake2s_24 -> 0xb243
    | `Blake2s_32 -> 0xb244
    | `Blake2s_40 -> 0xb245
    | `Blake2s_48 -> 0xb246
    | `Blake2s_56 -> 0xb247
    | `Blake2s_64 -> 0xb248
    | `Blake2s_72 -> 0xb249
    | `Blake2s_80 -> 0xb24a
    | `Blake2s_88 -> 0xb24b
    | `Blake2s_96 -> 0xb24c
    | `Blake2s_104 -> 0xb24d
    | `Blake2s_112 -> 0xb24e
    | `Blake2s_120 -> 0xb24f
    | `Blake2s_128 -> 0xb250
    | `Blake2s_136 -> 0xb251
    | `Blake2s_144 -> 0xb252
    | `Blake2s_152 -> 0xb253
    | `Blake2s_160 -> 0xb254
    | `Blake2s_168 -> 0xb255
    | `Blake2s_176 -> 0xb256
    | `Blake2s_184 -> 0xb257
    | `Blake2s_192 -> 0xb258
    | `Blake2s_200 -> 0xb259
    | `Blake2s_208 -> 0xb25a
    | `Blake2s_216 -> 0xb25b
    | `Blake2s_224 -> 0xb25c
    | `Blake2s_232 -> 0xb25d
    | `Blake2s_240 -> 0xb25e
    | `Blake2s_248 -> 0xb25f
    | `Blake2s_256 -> 0xb260
    | `Skein256_8 -> 0xb301
    | `Skein256_16 -> 0xb302
    | `Skein256_24 -> 0xb303
    | `Skein256_32 -> 0xb304
    | `Skein256_40 -> 0xb305
    | `Skein256_48 -> 0xb306
    | `Skein256_56 -> 0xb307
    | `Skein256_64 -> 0xb308
    | `Skein256_72 -> 0xb309
    | `Skein256_80 -> 0xb30a
    | `Skein256_88 -> 0xb30b
    | `Skein256_96 -> 0xb30c
    | `Skein256_104 -> 0xb30d
    | `Skein256_112 -> 0xb30e
    | `Skein256_120 -> 0xb30f
    | `Skein256_128 -> 0xb310
    | `Skein256_136 -> 0xb311
    | `Skein256_144 -> 0xb312
    | `Skein256_152 -> 0xb313
    | `Skein256_160 -> 0xb314
    | `Skein256_168 -> 0xb315
    | `Skein256_176 -> 0xb316
    | `Skein256_184 -> 0xb317
    | `Skein256_192 -> 0xb318
    | `Skein256_200 -> 0xb319
    | `Skein256_208 -> 0xb31a
    | `Skein256_216 -> 0xb31b
    | `Skein256_224 -> 0xb31c
    | `Skein256_232 -> 0xb31d
    | `Skein256_240 -> 0xb31e
    | `Skein256_248 -> 0xb31f
    | `Skein256_256 -> 0xb320
    | `Skein512_8 -> 0xb321
    | `Skein512_16 -> 0xb322
    | `Skein512_24 -> 0xb323
    | `Skein512_32 -> 0xb324
    | `Skein512_40 -> 0xb325
    | `Skein512_48 -> 0xb326
    | `Skein512_56 -> 0xb327
    | `Skein512_64 -> 0xb328
    | `Skein512_72 -> 0xb329
    | `Skein512_80 -> 0xb32a
    | `Skein512_88 -> 0xb32b
    | `Skein512_96 -> 0xb32c
    | `Skein512_104 -> 0xb32d
    | `Skein512_112 -> 0xb32e
    | `Skein512_120 -> 0xb32f
    | `Skein512_128 -> 0xb330
    | `Skein512_136 -> 0xb331
    | `Skein512_144 -> 0xb332
    | `Skein512_152 -> 0xb333
    | `Skein512_160 -> 0xb334
    | `Skein512_168 -> 0xb335
    | `Skein512_176 -> 0xb336
    | `Skein512_184 -> 0xb337
    | `Skein512_192 -> 0xb338
    | `Skein512_200 -> 0xb339
    | `Skein512_208 -> 0xb33a
    | `Skein512_216 -> 0xb33b
    | `Skein512_224 -> 0xb33c
    | `Skein512_232 -> 0xb33d
    | `Skein512_240 -> 0xb33e
    | `Skein512_248 -> 0xb33f
    | `Skein512_256 -> 0xb340
    | `Skein512_264 -> 0xb341
    | `Skein512_272 -> 0xb342
    | `Skein512_280 -> 0xb343
    | `Skein512_288 -> 0xb344
    | `Skein512_296 -> 0xb345
    | `Skein512_304 -> 0xb346
    | `Skein512_312 -> 0xb347
    | `Skein512_320 -> 0xb348
    | `Skein512_328 -> 0xb349
    | `Skein512_336 -> 0xb34a
    | `Skein512_344 -> 0xb34b
    | `Skein512_352 -> 0xb34c
    | `Skein512_360 -> 0xb34d
    | `Skein512_368 -> 0xb34e
    | `Skein512_376 -> 0xb34f
    | `Skein512_384 -> 0xb350
    | `Skein512_392 -> 0xb351
    | `Skein512_400 -> 0xb352
    | `Skein512_408 -> 0xb353
    | `Skein512_416 -> 0xb354
    | `Skein512_424 -> 0xb355
    | `Skein512_432 -> 0xb356
    | `Skein512_440 -> 0xb357
    | `Skein512_448 -> 0xb358
    | `Skein512_456 -> 0xb359
    | `Skein512_464 -> 0xb35a
    | `Skein512_472 -> 0xb35b
    | `Skein512_480 -> 0xb35c
    | `Skein512_488 -> 0xb35d
    | `Skein512_496 -> 0xb35e
    | `Skein512_504 -> 0xb35f
    | `Skein512_512 -> 0xb360
    | `Skein1024_8 -> 0xb361
    | `Skein1024_16 -> 0xb362
    | `Skein1024_24 -> 0xb363
    | `Skein1024_32 -> 0xb364
    | `Skein1024_40 -> 0xb365
    | `Skein1024_48 -> 0xb366
    | `Skein1024_56 -> 0xb367
    | `Skein1024_64 -> 0xb368
    | `Skein1024_72 -> 0xb369
    | `Skein1024_80 -> 0xb36a
    | `Skein1024_88 -> 0xb36b
    | `Skein1024_96 -> 0xb36c
    | `Skein1024_104 -> 0xb36d
    | `Skein1024_112 -> 0xb36e
    | `Skein1024_120 -> 0xb36f
    | `Skein1024_128 -> 0xb370
    | `Skein1024_136 -> 0xb371
    | `Skein1024_144 -> 0xb372
    | `Skein1024_152 -> 0xb373
    | `Skein1024_160 -> 0xb374
    | `Skein1024_168 -> 0xb375
    | `Skein1024_176 -> 0xb376
    | `Skein1024_184 -> 0xb377
    | `Skein1024_192 -> 0xb378
    | `Skein1024_200 -> 0xb379
    | `Skein1024_208 -> 0xb37a
    | `Skein1024_216 -> 0xb37b
    | `Skein1024_224 -> 0xb37c
    | `Skein1024_232 -> 0xb37d
    | `Skein1024_240 -> 0xb37e
    | `Skein1024_248 -> 0xb37f
    | `Skein1024_256 -> 0xb380
    | `Skein1024_264 -> 0xb381
    | `Skein1024_272 -> 0xb382
    | `Skein1024_280 -> 0xb383
    | `Skein1024_288 -> 0xb384
    | `Skein1024_296 -> 0xb385
    | `Skein1024_304 -> 0xb386
    | `Skein1024_312 -> 0xb387
    | `Skein1024_320 -> 0xb388
    | `Skein1024_328 -> 0xb389
    | `Skein1024_336 -> 0xb38a
    | `Skein1024_344 -> 0xb38b
    | `Skein1024_352 -> 0xb38c
    | `Skein1024_360 -> 0xb38d
    | `Skein1024_368 -> 0xb38e
    | `Skein1024_376 -> 0xb38f
    | `Skein1024_384 -> 0xb390
    | `Skein1024_392 -> 0xb391
    | `Skein1024_400 -> 0xb392
    | `Skein1024_408 -> 0xb393
    | `Skein1024_416 -> 0xb394
    | `Skein1024_424 -> 0xb395
    | `Skein1024_432 -> 0xb396
    | `Skein1024_440 -> 0xb397
    | `Skein1024_448 -> 0xb398
    | `Skein1024_456 -> 0xb399
    | `Skein1024_464 -> 0xb39a
    | `Skein1024_472 -> 0xb39b
    | `Skein1024_480 -> 0xb39c
    | `Skein1024_488 -> 0xb39d
    | `Skein1024_496 -> 0xb39e
    | `Skein1024_504 -> 0xb39f
    | `Skein1024_512 -> 0xb3a0
    | `Skein1024_520 -> 0xb3a1
    | `Skein1024_528 -> 0xb3a2
    | `Skein1024_536 -> 0xb3a3
    | `Skein1024_544 -> 0xb3a4
    | `Skein1024_552 -> 0xb3a5
    | `Skein1024_560 -> 0xb3a6
    | `Skein1024_568 -> 0xb3a7
    | `Skein1024_576 -> 0xb3a8
    | `Skein1024_584 -> 0xb3a9
    | `Skein1024_592 -> 0xb3aa
    | `Skein1024_600 -> 0xb3ab
    | `Skein1024_608 -> 0xb3ac
    | `Skein1024_616 -> 0xb3ad
    | `Skein1024_624 -> 0xb3ae
    | `Skein1024_632 -> 0xb3af
    | `Skein1024_640 -> 0xb3b0
    | `Skein1024_648 -> 0xb3b1
    | `Skein1024_656 -> 0xb3b2
    | `Skein1024_664 -> 0xb3b3
    | `Skein1024_672 -> 0xb3b4
    | `Skein1024_680 -> 0xb3b5
    | `Skein1024_688 -> 0xb3b6
    | `Skein1024_696 -> 0xb3b7
    | `Skein1024_704 -> 0xb3b8
    | `Skein1024_712 -> 0xb3b9
    | `Skein1024_720 -> 0xb3ba
    | `Skein1024_728 -> 0xb3bb
    | `Skein1024_736 -> 0xb3bc
    | `Skein1024_744 -> 0xb3bd
    | `Skein1024_752 -> 0xb3be
    | `Skein1024_760 -> 0xb3bf
    | `Skein1024_768 -> 0xb3c0
    | `Skein1024_776 -> 0xb3c1
    | `Skein1024_784 -> 0xb3c2
    | `Skein1024_792 -> 0xb3c3
    | `Skein1024_800 -> 0xb3c4
    | `Skein1024_808 -> 0xb3c5
    | `Skein1024_816 -> 0xb3c6
    | `Skein1024_824 -> 0xb3c7
    | `Skein1024_832 -> 0xb3c8
    | `Skein1024_840 -> 0xb3c9
    | `Skein1024_848 -> 0xb3ca
    | `Skein1024_856 -> 0xb3cb
    | `Skein1024_864 -> 0xb3cc
    | `Skein1024_872 -> 0xb3cd
    | `Skein1024_880 -> 0xb3ce
    | `Skein1024_888 -> 0xb3cf
    | `Skein1024_896 -> 0xb3d0
    | `Skein1024_904 -> 0xb3d1
    | `Skein1024_912 -> 0xb3d2
    | `Skein1024_920 -> 0xb3d3
    | `Skein1024_928 -> 0xb3d4
    | `Skein1024_936 -> 0xb3d5
    | `Skein1024_944 -> 0xb3d6
    | `Skein1024_952 -> 0xb3d7
    | `Skein1024_960 -> 0xb3d8
    | `Skein1024_968 -> 0xb3d9
    | `Skein1024_976 -> 0xb3da
    | `Skein1024_984 -> 0xb3db
    | `Skein1024_992 -> 0xb3dc
    | `Skein1024_1000 -> 0xb3dd
    | `Skein1024_1008 -> 0xb3de
    | `Skein1024_1016 -> 0xb3df
    | `Skein1024_1024 -> 0xb3e0
    | `Poseidon_bls12_381_a2_fc1 -> 0xb401
    | `Poseidon_bls12_381_a2_fc1_sc -> 0xb402

  let to_string = function
    | `Identity -> "identity"
    | `Sha1 -> "sha-1"
    | `Sha2_256 -> "sha2-256"
    | `Sha2_512 -> "sha2-512"
    | `Sha3_512 -> "sha3-512"
    | `Sha3_384 -> "sha3-384"
    | `Sha3_256 -> "sha2-256"
    | `Sha3_224 -> "sha2-224"
    | `Shake_128 -> "shake-128"
    | `Shake_256 -> "shake-256"
    | `Keccak_224 -> "keccak-224"
    | `Keccak_256 -> "keccak-256"
    | `Keccak_384 -> "keccak-384"
    | `Keccak_512 -> "keccak-512"
    | `Blake3 -> "blake3"
    | `Murmur3_128 -> "murmur3-128"
    | `Murmur3_32 -> "murmur3-32"
    | `Dbl_sha2_256 -> "dbl-sha2-256"
    | `Md4 -> "md4"
    | `Md5 -> "md5"
    | `Bmt -> "bmt"
    | `Sha2_256_trunc254_padded -> "sha2-256-trunc254-padded"
    | `Ripemd_128 -> "ripemd-128"
    | `Ripemd_160 -> "ripemd-160"
    | `Ripemd_256 -> "ripemd-256"
    | `Ripemd_320 -> "ripemd-320"
    | `X11 -> "x11"
    | `Kangarootwelve -> "kangarootwelve"
    | `Sm3_256 -> "sm3-256"
    | `Blake2b_8 -> "blake2b-8"
    | `Blake2b_16 -> "blake2b-16"
    | `Blake2b_24 -> "blake2b-24"
    | `Blake2b_32 -> "blake2b-32"
    | `Blake2b_40 -> "blake2b-40"
    | `Blake2b_48 -> "blake2b-48"
    | `Blake2b_56 -> "blake2b-56"
    | `Blake2b_64 -> "blake2b-64"
    | `Blake2b_72 -> "blake2b-72"
    | `Blake2b_80 -> "blake2b-80"
    | `Blake2b_88 -> "blake2b-88"
    | `Blake2b_96 -> "blake2b-96"
    | `Blake2b_104 -> "blake2b-104"
    | `Blake2b_112 -> "blake2b-112"
    | `Blake2b_120 -> "blake2b-120"
    | `Blake2b_128 -> "blake2b-128"
    | `Blake2b_136 -> "blake2b-136"
    | `Blake2b_144 -> "blake2b-144"
    | `Blake2b_152 -> "blake2b-152"
    | `Blake2b_160 -> "blake2b-160"
    | `Blake2b_168 -> "blake2b-168"
    | `Blake2b_176 -> "blake2b-176"
    | `Blake2b_184 -> "blake2b-184"
    | `Blake2b_192 -> "blake2b-192"
    | `Blake2b_200 -> "blake2b-200"
    | `Blake2b_208 -> "blake2b-208"
    | `Blake2b_216 -> "blake2b-216"
    | `Blake2b_224 -> "blake2b-224"
    | `Blake2b_232 -> "blake2b-232"
    | `Blake2b_240 -> "blake2b-240"
    | `Blake2b_248 -> "blake2b-248"
    | `Blake2b_256 -> "blake2b-256"
    | `Blake2b_264 -> "blake2b-264"
    | `Blake2b_272 -> "blake2b-272"
    | `Blake2b_280 -> "blake2b-280"
    | `Blake2b_288 -> "blake2b-288"
    | `Blake2b_296 -> "blake2b-296"
    | `Blake2b_304 -> "blake2b-304"
    | `Blake2b_312 -> "blake2b-312"
    | `Blake2b_320 -> "blake2b-320"
    | `Blake2b_328 -> "blake2b-328"
    | `Blake2b_336 -> "blake2b-336"
    | `Blake2b_344 -> "blake2b-344"
    | `Blake2b_352 -> "blake2b-352"
    | `Blake2b_360 -> "blake2b-360"
    | `Blake2b_368 -> "blake2b-368"
    | `Blake2b_376 -> "blake2b-376"
    | `Blake2b_384 -> "blake2b-384"
    | `Blake2b_392 -> "blake2b-392"
    | `Blake2b_400 -> "blake2b-400"
    | `Blake2b_408 -> "blake2b-408"
    | `Blake2b_416 -> "blake2b-416"
    | `Blake2b_424 -> "blake2b-424"
    | `Blake2b_432 -> "blake2b-432"
    | `Blake2b_440 -> "blake2b-440"
    | `Blake2b_448 -> "blake2b-448"
    | `Blake2b_456 -> "blake2b-456"
    | `Blake2b_464 -> "blake2b-464"
    | `Blake2b_472 -> "blake2b-472"
    | `Blake2b_480 -> "blake2b-480"
    | `Blake2b_488 -> "blake2b-488"
    | `Blake2b_496 -> "blake2b-496"
    | `Blake2b_504 -> "blake2b-504"
    | `Blake2b_512 -> "blake2b-512"
    | `Blake2s_8 -> "blake2s-8"
    | `Blake2s_16 -> "blake2s-16"
    | `Blake2s_24 -> "blake2s-24"
    | `Blake2s_32 -> "blake2s-32"
    | `Blake2s_40 -> "blake2s-40"
    | `Blake2s_48 -> "blake2s-48"
    | `Blake2s_56 -> "blake2s-56"
    | `Blake2s_64 -> "blake2s-64"
    | `Blake2s_72 -> "blake2s-72"
    | `Blake2s_80 -> "blake2s-80"
    | `Blake2s_88 -> "blake2s-88"
    | `Blake2s_96 -> "blake2s-96"
    | `Blake2s_104 -> "blake2s-104"
    | `Blake2s_112 -> "blake2s-112"
    | `Blake2s_120 -> "blake2s-120"
    | `Blake2s_128 -> "blake2s-128"
    | `Blake2s_136 -> "blake2s-136"
    | `Blake2s_144 -> "blake2s-144"
    | `Blake2s_152 -> "blake2s-152"
    | `Blake2s_160 -> "blake2s-160"
    | `Blake2s_168 -> "blake2s-168"
    | `Blake2s_176 -> "blake2s-176"
    | `Blake2s_184 -> "blake2s-184"
    | `Blake2s_192 -> "blake2s-192"
    | `Blake2s_200 -> "blake2s-200"
    | `Blake2s_208 -> "blake2s-208"
    | `Blake2s_216 -> "blake2s-216"
    | `Blake2s_224 -> "blake2s-224"
    | `Blake2s_232 -> "blake2s-232"
    | `Blake2s_240 -> "blake2s-240"
    | `Blake2s_248 -> "blake2s-248"
    | `Blake2s_256 -> "blake2s-256"
    | `Skein256_8 -> "skein256-8"
    | `Skein256_16 -> "skein256-16"
    | `Skein256_24 -> "skein256-24"
    | `Skein256_32 -> "skein256-32"
    | `Skein256_40 -> "skein256-40"
    | `Skein256_48 -> "skein256-48"
    | `Skein256_56 -> "skein256-56"
    | `Skein256_64 -> "skein256-64"
    | `Skein256_72 -> "skein256-72"
    | `Skein256_80 -> "skein256-80"
    | `Skein256_88 -> "skein256-88"
    | `Skein256_96 -> "skein256-96"
    | `Skein256_104 -> "skein256-104"
    | `Skein256_112 -> "skein256-112"
    | `Skein256_120 -> "skein256-120"
    | `Skein256_128 -> "skein256-128"
    | `Skein256_136 -> "skein256-136"
    | `Skein256_144 -> "skein256-144"
    | `Skein256_152 -> "skein256-152"
    | `Skein256_160 -> "skein256-160"
    | `Skein256_168 -> "skein256-168"
    | `Skein256_176 -> "skein256-176"
    | `Skein256_184 -> "skein256-184"
    | `Skein256_192 -> "skein256-192"
    | `Skein256_200 -> "skein256-200"
    | `Skein256_208 -> "skein256-208"
    | `Skein256_216 -> "skein256-216"
    | `Skein256_224 -> "skein256-224"
    | `Skein256_232 -> "skein256-232"
    | `Skein256_240 -> "skein256-240"
    | `Skein256_248 -> "skein256-248"
    | `Skein256_256 -> "skein256-256"
    | `Skein512_8 -> "skein512-8"
    | `Skein512_16 -> "skein512-16"
    | `Skein512_24 -> "skein512-24"
    | `Skein512_32 -> "skein512-32"
    | `Skein512_40 -> "skein512-40"
    | `Skein512_48 -> "skein512-48"
    | `Skein512_56 -> "skein512-56"
    | `Skein512_64 -> "skein512-54"
    | `Skein512_72 -> "skein512-72"
    | `Skein512_80 -> "skein512-80"
    | `Skein512_88 -> "skein512-88"
    | `Skein512_96 -> "skein512-96"
    | `Skein512_104 -> "skein512-104"
    | `Skein512_112 -> "skein512-112"
    | `Skein512_120 -> "skein512-120"
    | `Skein512_128 -> "skein512-128"
    | `Skein512_136 -> "skein512-136"
    | `Skein512_144 -> "skein512-144"
    | `Skein512_152 -> "skein512-152"
    | `Skein512_160 -> "skein512-160"
    | `Skein512_168 -> "skein512-168"
    | `Skein512_176 -> "skein512-176"
    | `Skein512_184 -> "skein512-184"
    | `Skein512_192 -> "skein512-192"
    | `Skein512_200 -> "skein512-200"
    | `Skein512_208 -> "skein512-208"
    | `Skein512_216 -> "skein512-216"
    | `Skein512_224 -> "skein512-224"
    | `Skein512_232 -> "skein512-232"
    | `Skein512_240 -> "skein512-240"
    | `Skein512_248 -> "skein512-248"
    | `Skein512_256 -> "skein512-256"
    | `Skein512_264 -> "skein512-264"
    | `Skein512_272 -> "skein512-272"
    | `Skein512_280 -> "skein512-280"
    | `Skein512_288 -> "skein512-288"
    | `Skein512_296 -> "skein512-296"
    | `Skein512_304 -> "skein512-304"
    | `Skein512_312 -> "skein512-312"
    | `Skein512_320 -> "skein512-320"
    | `Skein512_328 -> "skein512-328"
    | `Skein512_336 -> "skein512-336"
    | `Skein512_344 -> "skein512-344"
    | `Skein512_352 -> "skein512-352"
    | `Skein512_360 -> "skein512-360"
    | `Skein512_368 -> "skein512-368"
    | `Skein512_376 -> "skein512-376"
    | `Skein512_384 -> "skein512-384"
    | `Skein512_392 -> "skein512-392"
    | `Skein512_400 -> "skein512-400"
    | `Skein512_408 -> "skein512-408"
    | `Skein512_416 -> "skein512-416"
    | `Skein512_424 -> "skein512-424"
    | `Skein512_432 -> "skein512-432"
    | `Skein512_440 -> "skein512-440"
    | `Skein512_448 -> "skein512-448"
    | `Skein512_456 -> "skein512-456"
    | `Skein512_464 -> "skein512-464"
    | `Skein512_472 -> "skein512-472"
    | `Skein512_480 -> "skein512-480"
    | `Skein512_488 -> "skein512-488"
    | `Skein512_496 -> "skein512-496"
    | `Skein512_504 -> "skein512-504"
    | `Skein512_512 -> "skein512-512"
    | `Skein1024_8 -> "skein1024-8"
    | `Skein1024_16 -> "skein1024-16"
    | `Skein1024_24 -> "skein1024-24"
    | `Skein1024_32 -> "skein1024-32"
    | `Skein1024_40 -> "skein1024-40"
    | `Skein1024_48 -> "skein1024-48"
    | `Skein1024_56 -> "skein1024-56"
    | `Skein1024_64 -> "skein1024-64"
    | `Skein1024_72 -> "skein1024-72"
    | `Skein1024_80 -> "skein1024-80"
    | `Skein1024_88 -> "skein1024-88"
    | `Skein1024_96 -> "skein1024-96"
    | `Skein1024_104 -> "skein1024-104"
    | `Skein1024_112 -> "skein1024-112"
    | `Skein1024_120 -> "skein1024-120"
    | `Skein1024_128 -> "skein1024-128"
    | `Skein1024_136 -> "skein1024-136"
    | `Skein1024_144 -> "skein1024-144"
    | `Skein1024_152 -> "skein1024-152"
    | `Skein1024_160 -> "skein1024-160"
    | `Skein1024_168 -> "skein1024-168"
    | `Skein1024_176 -> "skein1024-176"
    | `Skein1024_184 -> "skein1024-184"
    | `Skein1024_192 -> "skein1024-192"
    | `Skein1024_200 -> "skein1024-200"
    | `Skein1024_208 -> "skein1024-208"
    | `Skein1024_216 -> "skein1024-216"
    | `Skein1024_224 -> "skein1024-224"
    | `Skein1024_232 -> "skein1024-232"
    | `Skein1024_240 -> "skein1024-240"
    | `Skein1024_248 -> "skein1024-248"
    | `Skein1024_256 -> "skein1024-256"
    | `Skein1024_264 -> "skein1024-264"
    | `Skein1024_272 -> "skein1024-272"
    | `Skein1024_280 -> "skein1024-280"
    | `Skein1024_288 -> "skein1024-288"
    | `Skein1024_296 -> "skein1024-296"
    | `Skein1024_304 -> "skein1024-304"
    | `Skein1024_312 -> "skein1024-312"
    | `Skein1024_320 -> "skein1024-320"
    | `Skein1024_328 -> "skein1024-328"
    | `Skein1024_336 -> "skein1024-336"
    | `Skein1024_344 -> "skein1024-344"
    | `Skein1024_352 -> "skein1024-352"
    | `Skein1024_360 -> "skein1024-360"
    | `Skein1024_368 -> "skein1024-368"
    | `Skein1024_376 -> "skein1024-376"
    | `Skein1024_384 -> "skein1024-384"
    | `Skein1024_392 -> "skein1024-392"
    | `Skein1024_400 -> "skein1024-400"
    | `Skein1024_408 -> "skein1024-408"
    | `Skein1024_416 -> "skein1024-416"
    | `Skein1024_424 -> "skein1024-424"
    | `Skein1024_432 -> "skein1024-432"
    | `Skein1024_440 -> "skein1024-440"
    | `Skein1024_448 -> "skein1024-448"
    | `Skein1024_456 -> "skein1024-456"
    | `Skein1024_464 -> "skein1024-464"
    | `Skein1024_472 -> "skein1024-472"
    | `Skein1024_480 -> "skein1024-480"
    | `Skein1024_488 -> "skein1024-488"
    | `Skein1024_496 -> "skein1024-496"
    | `Skein1024_504 -> "skein1024-504"
    | `Skein1024_512 -> "skein1024-512"
    | `Skein1024_520 -> "skein1024-520"
    | `Skein1024_528 -> "skein1024-528"
    | `Skein1024_536 -> "skein1024-536"
    | `Skein1024_544 -> "skein1024-544"
    | `Skein1024_552 -> "skein1024-552"
    | `Skein1024_560 -> "skein1024-560"
    | `Skein1024_568 -> "skein1024-568"
    | `Skein1024_576 -> "skein1024-576"
    | `Skein1024_584 -> "skein1024-584"
    | `Skein1024_592 -> "skein1024-592"
    | `Skein1024_600 -> "skein1024-600"
    | `Skein1024_608 -> "skein1024-608"
    | `Skein1024_616 -> "skein1024-616"
    | `Skein1024_624 -> "skein1024-624"
    | `Skein1024_632 -> "skein1024-632"
    | `Skein1024_640 -> "skein1024-640"
    | `Skein1024_648 -> "skein1024-648"
    | `Skein1024_656 -> "skein1024-656"
    | `Skein1024_664 -> "skein1024-664"
    | `Skein1024_672 -> "skein1024-672"
    | `Skein1024_680 -> "skein1024-680"
    | `Skein1024_688 -> "skein1024-688"
    | `Skein1024_696 -> "skein1024-696"
    | `Skein1024_704 -> "skein1024-704"
    | `Skein1024_712 -> "skein1024-712"
    | `Skein1024_720 -> "skein1024-720"
    | `Skein1024_728 -> "skein1024-728"
    | `Skein1024_736 -> "skein1024-736"
    | `Skein1024_744 -> "skein1024-744"
    | `Skein1024_752 -> "skein1024-752"
    | `Skein1024_760 -> "skein1024-760"
    | `Skein1024_768 -> "skein1024-768"
    | `Skein1024_776 -> "skein1024-776"
    | `Skein1024_784 -> "skein1024-784"
    | `Skein1024_792 -> "skein1024-792"
    | `Skein1024_800 -> "skein1024-800"
    | `Skein1024_808 -> "skein1024-808"
    | `Skein1024_816 -> "skein1024-816"
    | `Skein1024_824 -> "skein1024-824"
    | `Skein1024_832 -> "skein1024-832"
    | `Skein1024_840 -> "skein1024-840"
    | `Skein1024_848 -> "skein1024-848"
    | `Skein1024_856 -> "skein1024-856"
    | `Skein1024_864 -> "skein1024-864"
    | `Skein1024_872 -> "skein1024-872"
    | `Skein1024_880 -> "skein1024-880"
    | `Skein1024_888 -> "skein1024-888"
    | `Skein1024_896 -> "skein1024-896"
    | `Skein1024_904 -> "skein1024-904"
    | `Skein1024_912 -> "skein1024-912"
    | `Skein1024_920 -> "skein1024-920"
    | `Skein1024_928 -> "skein1024-928"
    | `Skein1024_936 -> "skein1024-936"
    | `Skein1024_944 -> "skein1024-944"
    | `Skein1024_952 -> "skein1024-952"
    | `Skein1024_960 -> "skein1024-960"
    | `Skein1024_968 -> "skein1024-968"
    | `Skein1024_976 -> "skein1024-976"
    | `Skein1024_984 -> "skein1024-984"
    | `Skein1024_992 -> "skein1024-992"
    | `Skein1024_1000 -> "skein1024-1000"
    | `Skein1024_1008 -> "skein1024-1008"
    | `Skein1024_1016 -> "skein1024-1016"
    | `Skein1024_1024 -> "skein1024-1024"
    | `Poseidon_bls12_381_a2_fc1 -> "poseidon-bl12-381-a2-fc1"
    | `Poseidon_bls12_381_a2_fc1_sc -> "poseidon-bl12-381-a2-fc1-sc"

  let of_int_exn = function
    | 0x00 -> `Identity
    | 0x11 -> `Sha1
    | 0x12 -> `Sha2_256
    | 0x13 -> `Sha2_512
    | 0x14 -> `Sha3_512
    | 0x15 -> `Sha3_384
    | 0x16 -> `Sha3_256
    | 0x17 -> `Sha3_224
    | 0x18 -> `Shake_128
    | 0x19 -> `Shake_256
    | 0x1a -> `Keccak_224
    | 0x1b -> `Keccak_256
    | 0x1c -> `Keccak_384
    | 0x1d -> `Keccak_512
    | 0x1e -> `Blake3
    | 0x22 -> `Murmur3_128
    | 0x23 -> `Murmur3_32
    | 0x56 -> `Dbl_sha2_256
    | 0xd4 -> `Md4
    | 0xd5 -> `Md5
    | 0xd6 -> `Bmt
    | 0x1012 -> `Sha2_256_trunc254_padded
    | 0x1052 -> `Ripemd_128
    | 0x1053 -> `Ripemd_160
    | 0x1054 -> `Ripemd_256
    | 0x1055 -> `Ripemd_320
    | 0x1100 -> `X11
    | 0x1d01 -> `Kangarootwelve
    | 0x534d -> `Sm3_256
    | 0xb201 -> `Blake2b_8
    | 0xb202 -> `Blake2b_16
    | 0xb203 -> `Blake2b_24
    | 0xb204 -> `Blake2b_32
    | 0xb205 -> `Blake2b_40
    | 0xb206 -> `Blake2b_48
    | 0xb207 -> `Blake2b_56
    | 0xb208 -> `Blake2b_64
    | 0xb209 -> `Blake2b_72
    | 0xb20a -> `Blake2b_80
    | 0xb20b -> `Blake2b_88
    | 0xb20c -> `Blake2b_96
    | 0xb20d -> `Blake2b_104
    | 0xb20e -> `Blake2b_112
    | 0xb20f -> `Blake2b_120
    | 0xb210 -> `Blake2b_128
    | 0xb211 -> `Blake2b_136
    | 0xb212 -> `Blake2b_144
    | 0xb213 -> `Blake2b_152
    | 0xb214 -> `Blake2b_160
    | 0xb215 -> `Blake2b_168
    | 0xb216 -> `Blake2b_176
    | 0xb217 -> `Blake2b_184
    | 0xb218 -> `Blake2b_192
    | 0xb219 -> `Blake2b_200
    | 0xb21a -> `Blake2b_208
    | 0xb21b -> `Blake2b_216
    | 0xb21c -> `Blake2b_224
    | 0xb21d -> `Blake2b_232
    | 0xb21e -> `Blake2b_240
    | 0xb21f -> `Blake2b_248
    | 0xb220 -> `Blake2b_256
    | 0xb221 -> `Blake2b_264
    | 0xb222 -> `Blake2b_272
    | 0xb223 -> `Blake2b_280
    | 0xb224 -> `Blake2b_288
    | 0xb225 -> `Blake2b_296
    | 0xb226 -> `Blake2b_304
    | 0xb227 -> `Blake2b_312
    | 0xb228 -> `Blake2b_320
    | 0xb229 -> `Blake2b_328
    | 0xb22a -> `Blake2b_336
    | 0xb22b -> `Blake2b_344
    | 0xb22c -> `Blake2b_352
    | 0xb22d -> `Blake2b_360
    | 0xb22e -> `Blake2b_368
    | 0xb22f -> `Blake2b_376
    | 0xb230 -> `Blake2b_384
    | 0xb231 -> `Blake2b_392
    | 0xb232 -> `Blake2b_400
    | 0xb233 -> `Blake2b_408
    | 0xb234 -> `Blake2b_416
    | 0xb235 -> `Blake2b_424
    | 0xb236 -> `Blake2b_432
    | 0xb237 -> `Blake2b_440
    | 0xb238 -> `Blake2b_448
    | 0xb239 -> `Blake2b_456
    | 0xb23a -> `Blake2b_464
    | 0xb23b -> `Blake2b_472
    | 0xb23c -> `Blake2b_480
    | 0xb23d -> `Blake2b_488
    | 0xb23e -> `Blake2b_496
    | 0xb23f -> `Blake2b_504
    | 0xb240 -> `Blake2b_512
    | 0xb241 -> `Blake2s_8
    | 0xb242 -> `Blake2s_16
    | 0xb243 -> `Blake2s_24
    | 0xb244 -> `Blake2s_32
    | 0xb245 -> `Blake2s_40
    | 0xb246 -> `Blake2s_48
    | 0xb247 -> `Blake2s_56
    | 0xb248 -> `Blake2s_64
    | 0xb249 -> `Blake2s_72
    | 0xb24a -> `Blake2s_80
    | 0xb24b -> `Blake2s_88
    | 0xb24c -> `Blake2s_96
    | 0xb24d -> `Blake2s_104
    | 0xb24e -> `Blake2s_112
    | 0xb24f -> `Blake2s_120
    | 0xb250 -> `Blake2s_128
    | 0xb251 -> `Blake2s_136
    | 0xb252 -> `Blake2s_144
    | 0xb253 -> `Blake2s_152
    | 0xb254 -> `Blake2s_160
    | 0xb255 -> `Blake2s_168
    | 0xb256 -> `Blake2s_176
    | 0xb257 -> `Blake2s_184
    | 0xb258 -> `Blake2s_192
    | 0xb259 -> `Blake2s_200
    | 0xb25a -> `Blake2s_208
    | 0xb25b -> `Blake2s_216
    | 0xb25c -> `Blake2s_224
    | 0xb25d -> `Blake2s_232
    | 0xb25e -> `Blake2s_240
    | 0xb25f -> `Blake2s_248
    | 0xb260 -> `Blake2s_256
    | 0xb301 -> `Skein256_8
    | 0xb302 -> `Skein256_16
    | 0xb303 -> `Skein256_24
    | 0xb304 -> `Skein256_32
    | 0xb305 -> `Skein256_40
    | 0xb306 -> `Skein256_48
    | 0xb307 -> `Skein256_56
    | 0xb308 -> `Skein256_64
    | 0xb309 -> `Skein256_72
    | 0xb30a -> `Skein256_80
    | 0xb30b -> `Skein256_88
    | 0xb30c -> `Skein256_96
    | 0xb30d -> `Skein256_104
    | 0xb30e -> `Skein256_112
    | 0xb30f -> `Skein256_120
    | 0xb310 -> `Skein256_128
    | 0xb311 -> `Skein256_136
    | 0xb312 -> `Skein256_144
    | 0xb313 -> `Skein256_152
    | 0xb314 -> `Skein256_160
    | 0xb315 -> `Skein256_168
    | 0xb316 -> `Skein256_176
    | 0xb317 -> `Skein256_184
    | 0xb318 -> `Skein256_192
    | 0xb319 -> `Skein256_200
    | 0xb31a -> `Skein256_208
    | 0xb31b -> `Skein256_216
    | 0xb31c -> `Skein256_224
    | 0xb31d -> `Skein256_232
    | 0xb31e -> `Skein256_240
    | 0xb31f -> `Skein256_248
    | 0xb320 -> `Skein256_256
    | 0xb321 -> `Skein512_8
    | 0xb322 -> `Skein512_16
    | 0xb323 -> `Skein512_24
    | 0xb324 -> `Skein512_32
    | 0xb325 -> `Skein512_40
    | 0xb326 -> `Skein512_48
    | 0xb327 -> `Skein512_56
    | 0xb328 -> `Skein512_64
    | 0xb329 -> `Skein512_72
    | 0xb32a -> `Skein512_80
    | 0xb32b -> `Skein512_88
    | 0xb32c -> `Skein512_96
    | 0xb32d -> `Skein512_104
    | 0xb32e -> `Skein512_112
    | 0xb32f -> `Skein512_120
    | 0xb330 -> `Skein512_128
    | 0xb331 -> `Skein512_136
    | 0xb332 -> `Skein512_144
    | 0xb333 -> `Skein512_152
    | 0xb334 -> `Skein512_160
    | 0xb335 -> `Skein512_168
    | 0xb336 -> `Skein512_176
    | 0xb337 -> `Skein512_184
    | 0xb338 -> `Skein512_192
    | 0xb339 -> `Skein512_200
    | 0xb33a -> `Skein512_208
    | 0xb33b -> `Skein512_216
    | 0xb33c -> `Skein512_224
    | 0xb33d -> `Skein512_232
    | 0xb33e -> `Skein512_240
    | 0xb33f -> `Skein512_248
    | 0xb340 -> `Skein512_256
    | 0xb341 -> `Skein512_264
    | 0xb342 -> `Skein512_272
    | 0xb343 -> `Skein512_280
    | 0xb344 -> `Skein512_288
    | 0xb345 -> `Skein512_296
    | 0xb346 -> `Skein512_304
    | 0xb347 -> `Skein512_312
    | 0xb348 -> `Skein512_320
    | 0xb349 -> `Skein512_328
    | 0xb34a -> `Skein512_336
    | 0xb34b -> `Skein512_344
    | 0xb34c -> `Skein512_352
    | 0xb34d -> `Skein512_360
    | 0xb34e -> `Skein512_368
    | 0xb34f -> `Skein512_376
    | 0xb350 -> `Skein512_384
    | 0xb351 -> `Skein512_392
    | 0xb352 -> `Skein512_400
    | 0xb353 -> `Skein512_408
    | 0xb354 -> `Skein512_416
    | 0xb355 -> `Skein512_424
    | 0xb356 -> `Skein512_432
    | 0xb357 -> `Skein512_440
    | 0xb358 -> `Skein512_448
    | 0xb359 -> `Skein512_456
    | 0xb35a -> `Skein512_464
    | 0xb35b -> `Skein512_472
    | 0xb35c -> `Skein512_480
    | 0xb35d -> `Skein512_488
    | 0xb35e -> `Skein512_496
    | 0xb35f -> `Skein512_504
    | 0xb360 -> `Skein512_512
    | 0xb361 -> `Skein1024_8
    | 0xb362 -> `Skein1024_16
    | 0xb363 -> `Skein1024_24
    | 0xb364 -> `Skein1024_32
    | 0xb365 -> `Skein1024_40
    | 0xb366 -> `Skein1024_48
    | 0xb367 -> `Skein1024_56
    | 0xb368 -> `Skein1024_64
    | 0xb369 -> `Skein1024_72
    | 0xb36a -> `Skein1024_80
    | 0xb36b -> `Skein1024_88
    | 0xb36c -> `Skein1024_96
    | 0xb36d -> `Skein1024_104
    | 0xb36e -> `Skein1024_112
    | 0xb36f -> `Skein1024_120
    | 0xb370 -> `Skein1024_128
    | 0xb371 -> `Skein1024_136
    | 0xb372 -> `Skein1024_144
    | 0xb373 -> `Skein1024_152
    | 0xb374 -> `Skein1024_160
    | 0xb375 -> `Skein1024_168
    | 0xb376 -> `Skein1024_176
    | 0xb377 -> `Skein1024_184
    | 0xb378 -> `Skein1024_192
    | 0xb379 -> `Skein1024_200
    | 0xb37a -> `Skein1024_208
    | 0xb37b -> `Skein1024_216
    | 0xb37c -> `Skein1024_224
    | 0xb37d -> `Skein1024_232
    | 0xb37e -> `Skein1024_240
    | 0xb37f -> `Skein1024_248
    | 0xb380 -> `Skein1024_256
    | 0xb381 -> `Skein1024_264
    | 0xb382 -> `Skein1024_272
    | 0xb383 -> `Skein1024_280
    | 0xb384 -> `Skein1024_288
    | 0xb385 -> `Skein1024_296
    | 0xb386 -> `Skein1024_304
    | 0xb387 -> `Skein1024_312
    | 0xb388 -> `Skein1024_320
    | 0xb389 -> `Skein1024_328
    | 0xb38a -> `Skein1024_336
    | 0xb38b -> `Skein1024_344
    | 0xb38c -> `Skein1024_352
    | 0xb38d -> `Skein1024_360
    | 0xb38e -> `Skein1024_368
    | 0xb38f -> `Skein1024_376
    | 0xb390 -> `Skein1024_384
    | 0xb391 -> `Skein1024_392
    | 0xb392 -> `Skein1024_400
    | 0xb393 -> `Skein1024_408
    | 0xb394 -> `Skein1024_416
    | 0xb395 -> `Skein1024_424
    | 0xb396 -> `Skein1024_432
    | 0xb397 -> `Skein1024_440
    | 0xb398 -> `Skein1024_448
    | 0xb399 -> `Skein1024_456
    | 0xb39a -> `Skein1024_464
    | 0xb39b -> `Skein1024_472
    | 0xb39c -> `Skein1024_480
    | 0xb39d -> `Skein1024_488
    | 0xb39e -> `Skein1024_496
    | 0xb39f -> `Skein1024_504
    | 0xb3a0 -> `Skein1024_512
    | 0xb3a1 -> `Skein1024_520
    | 0xb3a2 -> `Skein1024_528
    | 0xb3a3 -> `Skein1024_536
    | 0xb3a4 -> `Skein1024_544
    | 0xb3a5 -> `Skein1024_552
    | 0xb3a6 -> `Skein1024_560
    | 0xb3a7 -> `Skein1024_568
    | 0xb3a8 -> `Skein1024_576
    | 0xb3a9 -> `Skein1024_584
    | 0xb3aa -> `Skein1024_592
    | 0xb3ab -> `Skein1024_600
    | 0xb3ac -> `Skein1024_608
    | 0xb3ad -> `Skein1024_616
    | 0xb3ae -> `Skein1024_624
    | 0xb3af -> `Skein1024_632
    | 0xb3b0 -> `Skein1024_640
    | 0xb3b1 -> `Skein1024_648
    | 0xb3b2 -> `Skein1024_656
    | 0xb3b3 -> `Skein1024_664
    | 0xb3b4 -> `Skein1024_672
    | 0xb3b5 -> `Skein1024_680
    | 0xb3b6 -> `Skein1024_688
    | 0xb3b7 -> `Skein1024_696
    | 0xb3b8 -> `Skein1024_704
    | 0xb3b9 -> `Skein1024_712
    | 0xb3ba -> `Skein1024_720
    | 0xb3bb -> `Skein1024_728
    | 0xb3bc -> `Skein1024_736
    | 0xb3bd -> `Skein1024_744
    | 0xb3be -> `Skein1024_752
    | 0xb3bf -> `Skein1024_760
    | 0xb3c0 -> `Skein1024_768
    | 0xb3c1 -> `Skein1024_776
    | 0xb3c2 -> `Skein1024_784
    | 0xb3c3 -> `Skein1024_792
    | 0xb3c4 -> `Skein1024_800
    | 0xb3c5 -> `Skein1024_808
    | 0xb3c6 -> `Skein1024_816
    | 0xb3c7 -> `Skein1024_824
    | 0xb3c8 -> `Skein1024_832
    | 0xb3c9 -> `Skein1024_840
    | 0xb3ca -> `Skein1024_848
    | 0xb3cb -> `Skein1024_856
    | 0xb3cc -> `Skein1024_864
    | 0xb3cd -> `Skein1024_872
    | 0xb3ce -> `Skein1024_880
    | 0xb3cf -> `Skein1024_888
    | 0xb3d0 -> `Skein1024_896
    | 0xb3d1 -> `Skein1024_904
    | 0xb3d2 -> `Skein1024_912
    | 0xb3d3 -> `Skein1024_920
    | 0xb3d4 -> `Skein1024_928
    | 0xb3d5 -> `Skein1024_936
    | 0xb3d6 -> `Skein1024_944
    | 0xb3d7 -> `Skein1024_952
    | 0xb3d8 -> `Skein1024_960
    | 0xb3d9 -> `Skein1024_968
    | 0xb3da -> `Skein1024_976
    | 0xb3db -> `Skein1024_984
    | 0xb3dc -> `Skein1024_992
    | 0xb3dd -> `Skein1024_1000
    | 0xb3de -> `Skein1024_1008
    | 0xb3df -> `Skein1024_1016
    | 0xb3e0 -> `Skein1024_1024
    | 0xb401 -> `Poseidon_bls12_381_a2_fc1
    | 0xb402 -> `Poseidon_bls12_381_a2_fc1_sc
    | i -> Fmt.failwith "Unknown identifier %i" i

  let of_int ident =
    try Ok (of_int_exn ident) with Failure m -> Error (`Msg m)

  let is_deprecated = function `Md4 | `Md5 -> true | _ -> false
end

type 'a res = ('a, [ `Unsupported | `Msg of string ]) result

module S = struct
  module type Hasher = sig
    val digest : Identifier.t -> string -> Cstruct.t res

    val is_supported : Identifier.t -> bool
  end
end

module Make (H : S.Hasher) = struct
  type t = { ident : Identifier.t; length : int; digest : Cstruct.t }

  let v ~ident v =
    Result.map
      (fun digest ->
        let length = Cstruct.len digest in
        { ident; length; digest })
      (H.digest ident v)

  let make ~ident ~length ~digest = { ident; length; digest }

  let get_ident { ident; _ } = ident

  let get_length { length; _ } = length

  let get_digest { digest; _ } = digest

  let to_cstruct { ident; length; digest } =
    let ( <+> ) = Cstruct.append in
    let ident = Uvarint.encode (Identifier.to_int ident) in
    let length = Uvarint.encode length in
    ident <+> length <+> digest

  let of_cstruct buff =
    let ( >>= ) v f = Result.map f v in
    let l = Cstruct.len buff in
    let ident, len = Uvarint.decode buff in
    let length, len' = Uvarint.decode (Cstruct.sub buff len (l - len)) in
    Identifier.of_int ident >>= fun ident ->
    { ident; length; digest = Cstruct.sub buff (len + len') (l - len - len') }

  let pp ppf { ident; length; digest } =
    Fmt.pf ppf "ident(%i) length(%i) digest(%a)" (Identifier.to_int ident)
      length Cstruct.hexdump_pp digest

  let equal a b =
    a.ident = b.ident && a.length = b.length && Cstruct.equal a.digest b.digest
end
