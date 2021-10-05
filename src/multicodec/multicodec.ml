type filecoin = [ `Fil_commitment_unsealed | `Fil_commitment_sealed ]

type holochain =
  [ `Holochain_adr_v0
  | `Holochain_adr_v1
  | `Holochain_key_v0
  | `Holochain_key_v1
  | `Holochain_sig_v0
  | `Holochain_sig_v1 ]

type ipld =
  [ `Cidv1
  | `Cidv2
  | `Cidv3
  | `Raw
  | `Dag_pb
  | `Dag_cbor
  | `Libp2p_key
  | `Git_raw
  | `Torrent_info
  | `Torrent_file
  | `Leofcoin_block
  | `Leofcoin_tx
  | `Leofcoin_pr
  | `Dag_jose
  | `Dag_cose
  | `Eth_block
  | `Eth_block_list
  | `Eth_tx_trie
  | `Eth_tx
  | `Eth_tx_receipt_trie
  | `Eth_tx_receipt
  | `Eth_state_trie
  | `Eth_account_snapshot
  | `Eth_storage_trie
  | `Eth_receipt_log_trie
  | `Eth_reciept_log
  | `Bitcoin_block
  | `Bitcoin_tx
  | `Bitcoin_witness_commitment
  | `Zcash_block
  | `Zcash_tx
  | `Stellar_block
  | `Stellar_tx
  | `Decred_block
  | `Decred_tx
  | `Dash_block
  | `Dash_tx
  | `Swarm_manifest
  | `Swarm_feed
  | `Dag_json
  | `Swhid_1_snp ]

type key =
  [ `Aes_128
  | `Aes_192
  | `Aes_256
  | `Chacha_128
  | `Chacha_256
  | `Secp256k1_pub
  | `Bls12_381_g1_pub
  | `Bls12_381_g2_pub
  | `X25519_pub
  | `Ed25519_pub
  | `Bls12_381_g1g2_pub
  | `P256_pub
  | `P384_pub
  | `P521_pub
  | `Ed448_pub
  | `X448_pub
  | `Rsa_pub
  | `Ed25519_priv
  | `Secp256k1_priv
  | `X25519_priv ]

type libp2p = [ `Libp2p_peer_record | `Libp2p_relay_rsvp ]

type multiaddr =
  [ `Ip4
  | `Tcp
  | `Dccp
  | `Ip6
  | `Ip6zone
  | `Dns
  | `Dns4
  | `Dns6
  | `Dnsaddr
  | `Sctp
  | `Udp
  | `P2p_webrtc_star
  | `P2p_webrtc_direct
  | `P2p_stardust
  | `P2p_circuit
  | `Udt
  | `Utp
  | `Unix
  | `Thread
  | `P2p
  | `Https
  | `Onion
  | `Onion3
  | `Garlic64
  | `Garlic32
  | `Tls
  | `Noise
  | `Quic
  | `Ws
  | `Wss
  | `P2p_websocket_star
  | `Http
  | `Plaintextv2 ]

type multiformat =
  [ `Multicodec | `Multihash | `Multiaddr | `Multibase | `Caip_50 ]

type multihash =
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
  | `Sha2_384
  | `Murmur3_128
  | `Murmur3_32
  | `Dbl_sha2_256
  | `Md4
  | `Md5
  | `Bmt
  | `Sha2_256_trunc254_padded
  | `Sha2_224
  | `Sha2_512_224
  | `Sha2_512_256
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

type namespace =
  [ `Path
  | `Streamid
  | `Ipld_ns
  | `Ipfs_ns
  | `Swarm_ns
  | `Ipns_ns
  | `Zeronet
  | `Skynet_ns
  | `Arweave_ns ]

type serialization =
  [ `Protobuf
  | `Cbor
  | `Rlp
  | `Bencode
  | `Json
  | `Messagepack
  | `Car_index_sorted
  | `Car_multihash_index_sorted ]

type zeroxcert = [ `Zeroxcert_imprint_256 ]

type t =
  [ filecoin
  | holochain
  | ipld
  | key
  | libp2p
  | multiaddr
  | multiformat
  | multihash
  | namespace
  | serialization
  | zeroxcert ]

let filecoin_to_code = function
  | `Fil_commitment_unsealed -> 0xf101
  | `Fil_commitment_sealed -> 0xf102

let holochain_to_code = function
  | `Holochain_adr_v0 -> 0x807124
  | `Holochain_adr_v1 -> 0x817124
  | `Holochain_key_v0 -> 0x947124
  | `Holochain_key_v1 -> 0x957124
  | `Holochain_sig_v0 -> 0xa27124
  | `Holochain_sig_v1 -> 0xa37124

let ipld_to_code = function
  | `Cidv1 -> 0x01
  | `Cidv2 -> 0x02
  | `Cidv3 -> 0x03
  | `Raw -> 0x55
  | `Dag_pb -> 0x70
  | `Dag_cbor -> 0x71
  | `Libp2p_key -> 0x72
  | `Git_raw -> 0x78
  | `Torrent_info -> 0x7b
  | `Torrent_file -> 0x7c
  | `Leofcoin_block -> 0x81
  | `Leofcoin_tx -> 0x82
  | `Leofcoin_pr -> 0x83
  | `Dag_jose -> 0x85
  | `Dag_cose -> 0x86
  | `Eth_block -> 0x90
  | `Eth_block_list -> 0x91
  | `Eth_tx_trie -> 0x92
  | `Eth_tx -> 0x93
  | `Eth_tx_receipt_trie -> 0x94
  | `Eth_tx_receipt -> 0x95
  | `Eth_state_trie -> 0x96
  | `Eth_account_snapshot -> 0x97
  | `Eth_storage_trie -> 0x98
  | `Eth_receipt_log_trie -> 0x99
  | `Eth_reciept_log -> 0x9a
  | `Bitcoin_block -> 0xb0
  | `Bitcoin_tx -> 0xb1
  | `Bitcoin_witness_commitment -> 0xb2
  | `Zcash_block -> 0xc0
  | `Zcash_tx -> 0xc1
  | `Stellar_block -> 0xd0
  | `Stellar_tx -> 0xd1
  | `Decred_block -> 0xe0
  | `Decred_tx -> 0xe1
  | `Dash_block -> 0xf0
  | `Dash_tx -> 0xf1
  | `Swarm_manifest -> 0xfa
  | `Swarm_feed -> 0xfb
  | `Dag_json -> 0x0129
  | `Swhid_1_snp -> 0x01f0

let key_to_code = function
  | `Aes_128 -> 0xa0
  | `Aes_192 -> 0xa1
  | `Aes_256 -> 0xa2
  | `Chacha_128 -> 0xa3
  | `Chacha_256 -> 0xa4
  | `Secp256k1_pub -> 0xe7
  | `Bls12_381_g1_pub -> 0xea
  | `Bls12_381_g2_pub -> 0xeb
  | `X25519_pub -> 0xec
  | `Ed25519_pub -> 0xed
  | `Bls12_381_g1g2_pub -> 0xee
  | `P256_pub -> 0x1200
  | `P384_pub -> 0x1201
  | `P521_pub -> 0x1202
  | `Ed448_pub -> 0x1203
  | `X448_pub -> 0x1204
  | `Rsa_pub -> 0x1205
  | `Ed25519_priv -> 0x1300
  | `Secp256k1_priv -> 0x1301
  | `X25519_priv -> 0x1302

let libp2p_to_code = function
  | `Libp2p_peer_record -> 0x0301
  | `Libp2p_relay_rsvp -> 0x0302

let multiaddr_to_code = function
  | `Ip4 -> 0x04
  | `Tcp -> 0x06
  | `Dccp -> 0x21
  | `Ip6 -> 0x29
  | `Ip6zone -> 0x2a
  | `Dns -> 0x35
  | `Dns4 -> 0x36
  | `Dns6 -> 0x37
  | `Dnsaddr -> 0x38
  | `Sctp -> 0x84
  | `Udp -> 0x0111
  | `P2p_webrtc_star -> 0x0113
  | `P2p_webrtc_direct -> 0x0114
  | `P2p_stardust -> 0x0115
  | `P2p_circuit -> 0x0122
  | `Udt -> 0x012d
  | `Utp -> 0x012e
  | `Unix -> 0x0190
  | `Thread -> 0x0196
  | `P2p -> 0x01a5
  | `Https -> 0x01bb
  | `Onion -> 0x01bc
  | `Onion3 -> 0x01bd
  | `Garlic64 -> 0x01be
  | `Garlic32 -> 0x01bf
  | `Tls -> 0x01c0
  | `Noise -> 0x01c6
  | `Quic -> 0x01cc
  | `Ws -> 0x01dd
  | `Wss -> 0x01de
  | `P2p_websocket_star -> 0x01df
  | `Http -> 0x01e0
  | `Plaintextv2 -> 0x706c61

let multiformat_to_code = function
  | `Multicodec -> 0x30
  | `Multihash -> 0x31
  | `Multiaddr -> 0x32
  | `Multibase -> 0x33
  | `Caip_50 -> 0xca

let multihash_to_code = function
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
  | `Sha2_384 -> 0x20
  | `Murmur3_128 -> 0x22
  | `Murmur3_32 -> 0x23
  | `Dbl_sha2_256 -> 0x56
  | `Md4 -> 0xd4
  | `Md5 -> 0xd5
  | `Bmt -> 0xd6
  | `Sha2_256_trunc254_padded -> 0x1012
  | `Sha2_224 -> 0x1013
  | `Sha2_512_224 -> 0x1014
  | `Sha2_512_256 -> 0x1015
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

let namespace_to_code = function
  | `Path -> 0x2f
  | `Streamid -> 0xce
  | `Ipld_ns -> 0xe2
  | `Ipfs_ns -> 0xe3
  | `Swarm_ns -> 0xe4
  | `Ipns_ns -> 0xe5
  | `Zeronet -> 0xe6
  | `Skynet_ns -> 0xb19910
  | `Arweave_ns -> 0xb29910

let serialization_to_code = function
  | `Protobuf -> 0x50
  | `Cbor -> 0x51
  | `Rlp -> 0x60
  | `Bencode -> 0x63
  | `Json -> 0x0200
  | `Messagepack -> 0x0201
  | `Car_index_sorted -> 0x0400
  | `Car_multihash_index_sorted -> 0x0401

let zeroxcert_to_code = function `Zeroxcert_imprint_256 -> 0xce11

let to_code : t -> int = function
  | #filecoin as x -> filecoin_to_code x
  | #holochain as x -> holochain_to_code x
  | #ipld as x -> ipld_to_code x
  | #key as x -> key_to_code x
  | #libp2p as x -> libp2p_to_code x
  | #multiaddr as x -> multiaddr_to_code x
  | #multiformat as x -> multiformat_to_code x
  | #multihash as x -> multihash_to_code x
  | #namespace as x -> namespace_to_code x
  | #serialization as x -> serialization_to_code x
  | #zeroxcert as x -> zeroxcert_to_code x

let filecoin_of_code = function
  | 0xf101 -> Some `Fil_commitment_unsealed
  | 0xf102 -> Some `Fil_commitment_sealed
  | _ -> None

let holochain_of_code = function
  | 0x807124 -> Some `Holochain_adr_v0
  | 0x817124 -> Some `Holochain_adr_v1
  | 0x947124 -> Some `Holochain_key_v0
  | 0x957124 -> Some `Holochain_key_v1
  | 0xa27124 -> Some `Holochain_sig_v0
  | 0xa37124 -> Some `Holochain_sig_v1
  | _ -> None

let ipld_of_code = function
  | 0x01 -> Some `Cidv1
  | 0x02 -> Some `Cidv2
  | 0x03 -> Some `Cidv3
  | 0x55 -> Some `Raw
  | 0x70 -> Some `Dag_pb
  | 0x71 -> Some `Dag_cbor
  | 0x72 -> Some `Libp2p_key
  | 0x78 -> Some `Git_raw
  | 0x7b -> Some `Torrent_info
  | 0x7c -> Some `Torrent_file
  | 0x81 -> Some `Leofcoin_block
  | 0x82 -> Some `Leofcoin_tx
  | 0x83 -> Some `Leofcoin_pr
  | 0x85 -> Some `Dag_jose
  | 0x86 -> Some `Dag_cose
  | 0x90 -> Some `Eth_block
  | 0x91 -> Some `Eth_block_list
  | 0x92 -> Some `Eth_tx_trie
  | 0x93 -> Some `Eth_tx
  | 0x94 -> Some `Eth_tx_receipt_trie
  | 0x95 -> Some `Eth_tx_receipt
  | 0x96 -> Some `Eth_state_trie
  | 0x97 -> Some `Eth_account_snapshot
  | 0x98 -> Some `Eth_storage_trie
  | 0x99 -> Some `Eth_receipt_log_trie
  | 0x9a -> Some `Eth_reciept_log
  | 0xb0 -> Some `Bitcoin_block
  | 0xb1 -> Some `Bitcoin_tx
  | 0xb2 -> Some `Bitcoin_witness_commitment
  | 0xc0 -> Some `Zcash_block
  | 0xc1 -> Some `Zcash_tx
  | 0xd0 -> Some `Stellar_block
  | 0xd1 -> Some `Stellar_tx
  | 0xe0 -> Some `Decred_block
  | 0xe1 -> Some `Decred_tx
  | 0xf0 -> Some `Dash_block
  | 0xf1 -> Some `Dash_tx
  | 0xfa -> Some `Swarm_manifest
  | 0xfb -> Some `Swarm_feed
  | 0x0129 -> Some `Dag_json
  | 0x01f0 -> Some `Swhid_1_snp
  | _ -> None

let key_of_code = function
  | 0xa0 -> Some `Aes_128
  | 0xa1 -> Some `Aes_192
  | 0xa2 -> Some `Aes_256
  | 0xa3 -> Some `Chacha_128
  | 0xa4 -> Some `Chacha_256
  | 0xe7 -> Some `Secp256k1_pub
  | 0xea -> Some `Bls12_381_g1_pub
  | 0xeb -> Some `Bls12_381_g2_pub
  | 0xec -> Some `X25519_pub
  | 0xed -> Some `Ed25519_pub
  | 0xee -> Some `Bls12_381_g1g2_pub
  | 0x1200 -> Some `P256_pub
  | 0x1201 -> Some `P384_pub
  | 0x1202 -> Some `P521_pub
  | 0x1203 -> Some `Ed448_pub
  | 0x1204 -> Some `X448_pub
  | 0x1205 -> Some `Rsa_pub
  | 0x1300 -> Some `Ed25519_priv
  | 0x1301 -> Some `Secp256k1_priv
  | 0x1302 -> Some `X25519_priv
  | _ -> None

let libp2p_of_code = function
  | 0x0301 -> Some `Libp2p_peer_record
  | 0x0302 -> Some `Libp2p_relay_rsvp
  | _ -> None

let multiaddr_of_code = function
  | 0x04 -> Some `Ip4
  | 0x06 -> Some `Tcp
  | 0x21 -> Some `Dccp
  | 0x29 -> Some `Ip6
  | 0x2a -> Some `Ip6zone
  | 0x35 -> Some `Dns
  | 0x36 -> Some `Dns4
  | 0x37 -> Some `Dns6
  | 0x38 -> Some `Dnsaddr
  | 0x84 -> Some `Sctp
  | 0x0111 -> Some `Udp
  | 0x0113 -> Some `P2p_webrtc_star
  | 0x0114 -> Some `P2p_webrtc_direct
  | 0x0115 -> Some `P2p_stardust
  | 0x0122 -> Some `P2p_circuit
  | 0x012d -> Some `Udt
  | 0x012e -> Some `Utp
  | 0x0190 -> Some `Unix
  | 0x0196 -> Some `Thread
  | 0x01a5 -> Some `P2p
  | 0x01bb -> Some `Https
  | 0x01bc -> Some `Onion
  | 0x01bd -> Some `Onion3
  | 0x01be -> Some `Garlic64
  | 0x01bf -> Some `Garlic32
  | 0x01c0 -> Some `Tls
  | 0x01c6 -> Some `Noise
  | 0x01cc -> Some `Quic
  | 0x01dd -> Some `Ws
  | 0x01de -> Some `Wss
  | 0x01df -> Some `P2p_websocket_star
  | 0x01e0 -> Some `Http
  | 0x706c61 -> Some `Plaintextv2
  | _ -> None

let multiformat_of_code = function
  | 0x30 -> Some `Multicodec
  | 0x31 -> Some `Multihash
  | 0x32 -> Some `Multiaddr
  | 0x33 -> Some `Multibase
  | 0xca -> Some `Caip_50
  | _ -> None

let multihash_of_code = function
  | 0x00 -> Some `Identity
  | 0x11 -> Some `Sha1
  | 0x12 -> Some `Sha2_256
  | 0x13 -> Some `Sha2_512
  | 0x14 -> Some `Sha3_512
  | 0x15 -> Some `Sha3_384
  | 0x16 -> Some `Sha3_256
  | 0x17 -> Some `Sha3_224
  | 0x18 -> Some `Shake_128
  | 0x19 -> Some `Shake_256
  | 0x1a -> Some `Keccak_224
  | 0x1b -> Some `Keccak_256
  | 0x1c -> Some `Keccak_384
  | 0x1d -> Some `Keccak_512
  | 0x1e -> Some `Blake3
  | 0x20 -> Some `Sha2_384
  | 0x22 -> Some `Murmur3_128
  | 0x23 -> Some `Murmur3_32
  | 0x56 -> Some `Dbl_sha2_256
  | 0xd4 -> Some `Md4
  | 0xd5 -> Some `Md5
  | 0xd6 -> Some `Bmt
  | 0x1012 -> Some `Sha2_256_trunc254_padded
  | 0x1013 -> Some `Sha2_224
  | 0x1014 -> Some `Sha2_512_224
  | 0x1015 -> Some `Sha2_512_256
  | 0x1052 -> Some `Ripemd_128
  | 0x1053 -> Some `Ripemd_160
  | 0x1054 -> Some `Ripemd_256
  | 0x1055 -> Some `Ripemd_320
  | 0x1100 -> Some `X11
  | 0x1d01 -> Some `Kangarootwelve
  | 0x534d -> Some `Sm3_256
  | 0xb201 -> Some `Blake2b_8
  | 0xb202 -> Some `Blake2b_16
  | 0xb203 -> Some `Blake2b_24
  | 0xb204 -> Some `Blake2b_32
  | 0xb205 -> Some `Blake2b_40
  | 0xb206 -> Some `Blake2b_48
  | 0xb207 -> Some `Blake2b_56
  | 0xb208 -> Some `Blake2b_64
  | 0xb209 -> Some `Blake2b_72
  | 0xb20a -> Some `Blake2b_80
  | 0xb20b -> Some `Blake2b_88
  | 0xb20c -> Some `Blake2b_96
  | 0xb20d -> Some `Blake2b_104
  | 0xb20e -> Some `Blake2b_112
  | 0xb20f -> Some `Blake2b_120
  | 0xb210 -> Some `Blake2b_128
  | 0xb211 -> Some `Blake2b_136
  | 0xb212 -> Some `Blake2b_144
  | 0xb213 -> Some `Blake2b_152
  | 0xb214 -> Some `Blake2b_160
  | 0xb215 -> Some `Blake2b_168
  | 0xb216 -> Some `Blake2b_176
  | 0xb217 -> Some `Blake2b_184
  | 0xb218 -> Some `Blake2b_192
  | 0xb219 -> Some `Blake2b_200
  | 0xb21a -> Some `Blake2b_208
  | 0xb21b -> Some `Blake2b_216
  | 0xb21c -> Some `Blake2b_224
  | 0xb21d -> Some `Blake2b_232
  | 0xb21e -> Some `Blake2b_240
  | 0xb21f -> Some `Blake2b_248
  | 0xb220 -> Some `Blake2b_256
  | 0xb221 -> Some `Blake2b_264
  | 0xb222 -> Some `Blake2b_272
  | 0xb223 -> Some `Blake2b_280
  | 0xb224 -> Some `Blake2b_288
  | 0xb225 -> Some `Blake2b_296
  | 0xb226 -> Some `Blake2b_304
  | 0xb227 -> Some `Blake2b_312
  | 0xb228 -> Some `Blake2b_320
  | 0xb229 -> Some `Blake2b_328
  | 0xb22a -> Some `Blake2b_336
  | 0xb22b -> Some `Blake2b_344
  | 0xb22c -> Some `Blake2b_352
  | 0xb22d -> Some `Blake2b_360
  | 0xb22e -> Some `Blake2b_368
  | 0xb22f -> Some `Blake2b_376
  | 0xb230 -> Some `Blake2b_384
  | 0xb231 -> Some `Blake2b_392
  | 0xb232 -> Some `Blake2b_400
  | 0xb233 -> Some `Blake2b_408
  | 0xb234 -> Some `Blake2b_416
  | 0xb235 -> Some `Blake2b_424
  | 0xb236 -> Some `Blake2b_432
  | 0xb237 -> Some `Blake2b_440
  | 0xb238 -> Some `Blake2b_448
  | 0xb239 -> Some `Blake2b_456
  | 0xb23a -> Some `Blake2b_464
  | 0xb23b -> Some `Blake2b_472
  | 0xb23c -> Some `Blake2b_480
  | 0xb23d -> Some `Blake2b_488
  | 0xb23e -> Some `Blake2b_496
  | 0xb23f -> Some `Blake2b_504
  | 0xb240 -> Some `Blake2b_512
  | 0xb241 -> Some `Blake2s_8
  | 0xb242 -> Some `Blake2s_16
  | 0xb243 -> Some `Blake2s_24
  | 0xb244 -> Some `Blake2s_32
  | 0xb245 -> Some `Blake2s_40
  | 0xb246 -> Some `Blake2s_48
  | 0xb247 -> Some `Blake2s_56
  | 0xb248 -> Some `Blake2s_64
  | 0xb249 -> Some `Blake2s_72
  | 0xb24a -> Some `Blake2s_80
  | 0xb24b -> Some `Blake2s_88
  | 0xb24c -> Some `Blake2s_96
  | 0xb24d -> Some `Blake2s_104
  | 0xb24e -> Some `Blake2s_112
  | 0xb24f -> Some `Blake2s_120
  | 0xb250 -> Some `Blake2s_128
  | 0xb251 -> Some `Blake2s_136
  | 0xb252 -> Some `Blake2s_144
  | 0xb253 -> Some `Blake2s_152
  | 0xb254 -> Some `Blake2s_160
  | 0xb255 -> Some `Blake2s_168
  | 0xb256 -> Some `Blake2s_176
  | 0xb257 -> Some `Blake2s_184
  | 0xb258 -> Some `Blake2s_192
  | 0xb259 -> Some `Blake2s_200
  | 0xb25a -> Some `Blake2s_208
  | 0xb25b -> Some `Blake2s_216
  | 0xb25c -> Some `Blake2s_224
  | 0xb25d -> Some `Blake2s_232
  | 0xb25e -> Some `Blake2s_240
  | 0xb25f -> Some `Blake2s_248
  | 0xb260 -> Some `Blake2s_256
  | 0xb301 -> Some `Skein256_8
  | 0xb302 -> Some `Skein256_16
  | 0xb303 -> Some `Skein256_24
  | 0xb304 -> Some `Skein256_32
  | 0xb305 -> Some `Skein256_40
  | 0xb306 -> Some `Skein256_48
  | 0xb307 -> Some `Skein256_56
  | 0xb308 -> Some `Skein256_64
  | 0xb309 -> Some `Skein256_72
  | 0xb30a -> Some `Skein256_80
  | 0xb30b -> Some `Skein256_88
  | 0xb30c -> Some `Skein256_96
  | 0xb30d -> Some `Skein256_104
  | 0xb30e -> Some `Skein256_112
  | 0xb30f -> Some `Skein256_120
  | 0xb310 -> Some `Skein256_128
  | 0xb311 -> Some `Skein256_136
  | 0xb312 -> Some `Skein256_144
  | 0xb313 -> Some `Skein256_152
  | 0xb314 -> Some `Skein256_160
  | 0xb315 -> Some `Skein256_168
  | 0xb316 -> Some `Skein256_176
  | 0xb317 -> Some `Skein256_184
  | 0xb318 -> Some `Skein256_192
  | 0xb319 -> Some `Skein256_200
  | 0xb31a -> Some `Skein256_208
  | 0xb31b -> Some `Skein256_216
  | 0xb31c -> Some `Skein256_224
  | 0xb31d -> Some `Skein256_232
  | 0xb31e -> Some `Skein256_240
  | 0xb31f -> Some `Skein256_248
  | 0xb320 -> Some `Skein256_256
  | 0xb321 -> Some `Skein512_8
  | 0xb322 -> Some `Skein512_16
  | 0xb323 -> Some `Skein512_24
  | 0xb324 -> Some `Skein512_32
  | 0xb325 -> Some `Skein512_40
  | 0xb326 -> Some `Skein512_48
  | 0xb327 -> Some `Skein512_56
  | 0xb328 -> Some `Skein512_64
  | 0xb329 -> Some `Skein512_72
  | 0xb32a -> Some `Skein512_80
  | 0xb32b -> Some `Skein512_88
  | 0xb32c -> Some `Skein512_96
  | 0xb32d -> Some `Skein512_104
  | 0xb32e -> Some `Skein512_112
  | 0xb32f -> Some `Skein512_120
  | 0xb330 -> Some `Skein512_128
  | 0xb331 -> Some `Skein512_136
  | 0xb332 -> Some `Skein512_144
  | 0xb333 -> Some `Skein512_152
  | 0xb334 -> Some `Skein512_160
  | 0xb335 -> Some `Skein512_168
  | 0xb336 -> Some `Skein512_176
  | 0xb337 -> Some `Skein512_184
  | 0xb338 -> Some `Skein512_192
  | 0xb339 -> Some `Skein512_200
  | 0xb33a -> Some `Skein512_208
  | 0xb33b -> Some `Skein512_216
  | 0xb33c -> Some `Skein512_224
  | 0xb33d -> Some `Skein512_232
  | 0xb33e -> Some `Skein512_240
  | 0xb33f -> Some `Skein512_248
  | 0xb340 -> Some `Skein512_256
  | 0xb341 -> Some `Skein512_264
  | 0xb342 -> Some `Skein512_272
  | 0xb343 -> Some `Skein512_280
  | 0xb344 -> Some `Skein512_288
  | 0xb345 -> Some `Skein512_296
  | 0xb346 -> Some `Skein512_304
  | 0xb347 -> Some `Skein512_312
  | 0xb348 -> Some `Skein512_320
  | 0xb349 -> Some `Skein512_328
  | 0xb34a -> Some `Skein512_336
  | 0xb34b -> Some `Skein512_344
  | 0xb34c -> Some `Skein512_352
  | 0xb34d -> Some `Skein512_360
  | 0xb34e -> Some `Skein512_368
  | 0xb34f -> Some `Skein512_376
  | 0xb350 -> Some `Skein512_384
  | 0xb351 -> Some `Skein512_392
  | 0xb352 -> Some `Skein512_400
  | 0xb353 -> Some `Skein512_408
  | 0xb354 -> Some `Skein512_416
  | 0xb355 -> Some `Skein512_424
  | 0xb356 -> Some `Skein512_432
  | 0xb357 -> Some `Skein512_440
  | 0xb358 -> Some `Skein512_448
  | 0xb359 -> Some `Skein512_456
  | 0xb35a -> Some `Skein512_464
  | 0xb35b -> Some `Skein512_472
  | 0xb35c -> Some `Skein512_480
  | 0xb35d -> Some `Skein512_488
  | 0xb35e -> Some `Skein512_496
  | 0xb35f -> Some `Skein512_504
  | 0xb360 -> Some `Skein512_512
  | 0xb361 -> Some `Skein1024_8
  | 0xb362 -> Some `Skein1024_16
  | 0xb363 -> Some `Skein1024_24
  | 0xb364 -> Some `Skein1024_32
  | 0xb365 -> Some `Skein1024_40
  | 0xb366 -> Some `Skein1024_48
  | 0xb367 -> Some `Skein1024_56
  | 0xb368 -> Some `Skein1024_64
  | 0xb369 -> Some `Skein1024_72
  | 0xb36a -> Some `Skein1024_80
  | 0xb36b -> Some `Skein1024_88
  | 0xb36c -> Some `Skein1024_96
  | 0xb36d -> Some `Skein1024_104
  | 0xb36e -> Some `Skein1024_112
  | 0xb36f -> Some `Skein1024_120
  | 0xb370 -> Some `Skein1024_128
  | 0xb371 -> Some `Skein1024_136
  | 0xb372 -> Some `Skein1024_144
  | 0xb373 -> Some `Skein1024_152
  | 0xb374 -> Some `Skein1024_160
  | 0xb375 -> Some `Skein1024_168
  | 0xb376 -> Some `Skein1024_176
  | 0xb377 -> Some `Skein1024_184
  | 0xb378 -> Some `Skein1024_192
  | 0xb379 -> Some `Skein1024_200
  | 0xb37a -> Some `Skein1024_208
  | 0xb37b -> Some `Skein1024_216
  | 0xb37c -> Some `Skein1024_224
  | 0xb37d -> Some `Skein1024_232
  | 0xb37e -> Some `Skein1024_240
  | 0xb37f -> Some `Skein1024_248
  | 0xb380 -> Some `Skein1024_256
  | 0xb381 -> Some `Skein1024_264
  | 0xb382 -> Some `Skein1024_272
  | 0xb383 -> Some `Skein1024_280
  | 0xb384 -> Some `Skein1024_288
  | 0xb385 -> Some `Skein1024_296
  | 0xb386 -> Some `Skein1024_304
  | 0xb387 -> Some `Skein1024_312
  | 0xb388 -> Some `Skein1024_320
  | 0xb389 -> Some `Skein1024_328
  | 0xb38a -> Some `Skein1024_336
  | 0xb38b -> Some `Skein1024_344
  | 0xb38c -> Some `Skein1024_352
  | 0xb38d -> Some `Skein1024_360
  | 0xb38e -> Some `Skein1024_368
  | 0xb38f -> Some `Skein1024_376
  | 0xb390 -> Some `Skein1024_384
  | 0xb391 -> Some `Skein1024_392
  | 0xb392 -> Some `Skein1024_400
  | 0xb393 -> Some `Skein1024_408
  | 0xb394 -> Some `Skein1024_416
  | 0xb395 -> Some `Skein1024_424
  | 0xb396 -> Some `Skein1024_432
  | 0xb397 -> Some `Skein1024_440
  | 0xb398 -> Some `Skein1024_448
  | 0xb399 -> Some `Skein1024_456
  | 0xb39a -> Some `Skein1024_464
  | 0xb39b -> Some `Skein1024_472
  | 0xb39c -> Some `Skein1024_480
  | 0xb39d -> Some `Skein1024_488
  | 0xb39e -> Some `Skein1024_496
  | 0xb39f -> Some `Skein1024_504
  | 0xb3a0 -> Some `Skein1024_512
  | 0xb3a1 -> Some `Skein1024_520
  | 0xb3a2 -> Some `Skein1024_528
  | 0xb3a3 -> Some `Skein1024_536
  | 0xb3a4 -> Some `Skein1024_544
  | 0xb3a5 -> Some `Skein1024_552
  | 0xb3a6 -> Some `Skein1024_560
  | 0xb3a7 -> Some `Skein1024_568
  | 0xb3a8 -> Some `Skein1024_576
  | 0xb3a9 -> Some `Skein1024_584
  | 0xb3aa -> Some `Skein1024_592
  | 0xb3ab -> Some `Skein1024_600
  | 0xb3ac -> Some `Skein1024_608
  | 0xb3ad -> Some `Skein1024_616
  | 0xb3ae -> Some `Skein1024_624
  | 0xb3af -> Some `Skein1024_632
  | 0xb3b0 -> Some `Skein1024_640
  | 0xb3b1 -> Some `Skein1024_648
  | 0xb3b2 -> Some `Skein1024_656
  | 0xb3b3 -> Some `Skein1024_664
  | 0xb3b4 -> Some `Skein1024_672
  | 0xb3b5 -> Some `Skein1024_680
  | 0xb3b6 -> Some `Skein1024_688
  | 0xb3b7 -> Some `Skein1024_696
  | 0xb3b8 -> Some `Skein1024_704
  | 0xb3b9 -> Some `Skein1024_712
  | 0xb3ba -> Some `Skein1024_720
  | 0xb3bb -> Some `Skein1024_728
  | 0xb3bc -> Some `Skein1024_736
  | 0xb3bd -> Some `Skein1024_744
  | 0xb3be -> Some `Skein1024_752
  | 0xb3bf -> Some `Skein1024_760
  | 0xb3c0 -> Some `Skein1024_768
  | 0xb3c1 -> Some `Skein1024_776
  | 0xb3c2 -> Some `Skein1024_784
  | 0xb3c3 -> Some `Skein1024_792
  | 0xb3c4 -> Some `Skein1024_800
  | 0xb3c5 -> Some `Skein1024_808
  | 0xb3c6 -> Some `Skein1024_816
  | 0xb3c7 -> Some `Skein1024_824
  | 0xb3c8 -> Some `Skein1024_832
  | 0xb3c9 -> Some `Skein1024_840
  | 0xb3ca -> Some `Skein1024_848
  | 0xb3cb -> Some `Skein1024_856
  | 0xb3cc -> Some `Skein1024_864
  | 0xb3cd -> Some `Skein1024_872
  | 0xb3ce -> Some `Skein1024_880
  | 0xb3cf -> Some `Skein1024_888
  | 0xb3d0 -> Some `Skein1024_896
  | 0xb3d1 -> Some `Skein1024_904
  | 0xb3d2 -> Some `Skein1024_912
  | 0xb3d3 -> Some `Skein1024_920
  | 0xb3d4 -> Some `Skein1024_928
  | 0xb3d5 -> Some `Skein1024_936
  | 0xb3d6 -> Some `Skein1024_944
  | 0xb3d7 -> Some `Skein1024_952
  | 0xb3d8 -> Some `Skein1024_960
  | 0xb3d9 -> Some `Skein1024_968
  | 0xb3da -> Some `Skein1024_976
  | 0xb3db -> Some `Skein1024_984
  | 0xb3dc -> Some `Skein1024_992
  | 0xb3dd -> Some `Skein1024_1000
  | 0xb3de -> Some `Skein1024_1008
  | 0xb3df -> Some `Skein1024_1016
  | 0xb3e0 -> Some `Skein1024_1024
  | 0xb401 -> Some `Poseidon_bls12_381_a2_fc1
  | 0xb402 -> Some `Poseidon_bls12_381_a2_fc1_sc
  | _ -> None

let namespace_of_code = function
  | 0x2f -> Some `Path
  | 0xce -> Some `Streamid
  | 0xe2 -> Some `Ipld_ns
  | 0xe3 -> Some `Ipfs_ns
  | 0xe4 -> Some `Swarm_ns
  | 0xe5 -> Some `Ipns_ns
  | 0xe6 -> Some `Zeronet
  | 0xb19910 -> Some `Skynet_ns
  | 0xb29910 -> Some `Arweave_ns
  | _ -> None

let serialization_of_code = function
  | 0x50 -> Some `Protobuf
  | 0x51 -> Some `Cbor
  | 0x60 -> Some `Rlp
  | 0x63 -> Some `Bencode
  | 0x0200 -> Some `Json
  | 0x0201 -> Some `Messagepack
  | 0x0400 -> Some `Car_index_sorted
  | 0x0401 -> Some `Car_multihash_index_sorted
  | _ -> None

let zeroxcert_of_code = function
  | 0xce11 -> Some `Zeroxcert_imprint_256
  | _ -> None

let of_code : int -> t option = function
  | 0x00 -> Some `Identity
  | 0x01 -> Some `Cidv1
  | 0x02 -> Some `Cidv2
  | 0x03 -> Some `Cidv3
  | 0x04 -> Some `Ip4
  | 0x06 -> Some `Tcp
  | 0x11 -> Some `Sha1
  | 0x12 -> Some `Sha2_256
  | 0x13 -> Some `Sha2_512
  | 0x14 -> Some `Sha3_512
  | 0x15 -> Some `Sha3_384
  | 0x16 -> Some `Sha3_256
  | 0x17 -> Some `Sha3_224
  | 0x18 -> Some `Shake_128
  | 0x19 -> Some `Shake_256
  | 0x1a -> Some `Keccak_224
  | 0x1b -> Some `Keccak_256
  | 0x1c -> Some `Keccak_384
  | 0x1d -> Some `Keccak_512
  | 0x1e -> Some `Blake3
  | 0x20 -> Some `Sha2_384
  | 0x21 -> Some `Dccp
  | 0x22 -> Some `Murmur3_128
  | 0x23 -> Some `Murmur3_32
  | 0x29 -> Some `Ip6
  | 0x2a -> Some `Ip6zone
  | 0x2f -> Some `Path
  | 0x30 -> Some `Multicodec
  | 0x31 -> Some `Multihash
  | 0x32 -> Some `Multiaddr
  | 0x33 -> Some `Multibase
  | 0x35 -> Some `Dns
  | 0x36 -> Some `Dns4
  | 0x37 -> Some `Dns6
  | 0x38 -> Some `Dnsaddr
  | 0x50 -> Some `Protobuf
  | 0x51 -> Some `Cbor
  | 0x55 -> Some `Raw
  | 0x56 -> Some `Dbl_sha2_256
  | 0x60 -> Some `Rlp
  | 0x63 -> Some `Bencode
  | 0x70 -> Some `Dag_pb
  | 0x71 -> Some `Dag_cbor
  | 0x72 -> Some `Libp2p_key
  | 0x78 -> Some `Git_raw
  | 0x7b -> Some `Torrent_info
  | 0x7c -> Some `Torrent_file
  | 0x81 -> Some `Leofcoin_block
  | 0x82 -> Some `Leofcoin_tx
  | 0x83 -> Some `Leofcoin_pr
  | 0x84 -> Some `Sctp
  | 0x85 -> Some `Dag_jose
  | 0x86 -> Some `Dag_cose
  | 0x90 -> Some `Eth_block
  | 0x91 -> Some `Eth_block_list
  | 0x92 -> Some `Eth_tx_trie
  | 0x93 -> Some `Eth_tx
  | 0x94 -> Some `Eth_tx_receipt_trie
  | 0x95 -> Some `Eth_tx_receipt
  | 0x96 -> Some `Eth_state_trie
  | 0x97 -> Some `Eth_account_snapshot
  | 0x98 -> Some `Eth_storage_trie
  | 0x99 -> Some `Eth_receipt_log_trie
  | 0x9a -> Some `Eth_reciept_log
  | 0xa0 -> Some `Aes_128
  | 0xa1 -> Some `Aes_192
  | 0xa2 -> Some `Aes_256
  | 0xa3 -> Some `Chacha_128
  | 0xa4 -> Some `Chacha_256
  | 0xb0 -> Some `Bitcoin_block
  | 0xb1 -> Some `Bitcoin_tx
  | 0xb2 -> Some `Bitcoin_witness_commitment
  | 0xc0 -> Some `Zcash_block
  | 0xc1 -> Some `Zcash_tx
  | 0xca -> Some `Caip_50
  | 0xce -> Some `Streamid
  | 0xd0 -> Some `Stellar_block
  | 0xd1 -> Some `Stellar_tx
  | 0xd4 -> Some `Md4
  | 0xd5 -> Some `Md5
  | 0xd6 -> Some `Bmt
  | 0xe0 -> Some `Decred_block
  | 0xe1 -> Some `Decred_tx
  | 0xe2 -> Some `Ipld_ns
  | 0xe3 -> Some `Ipfs_ns
  | 0xe4 -> Some `Swarm_ns
  | 0xe5 -> Some `Ipns_ns
  | 0xe6 -> Some `Zeronet
  | 0xe7 -> Some `Secp256k1_pub
  | 0xea -> Some `Bls12_381_g1_pub
  | 0xeb -> Some `Bls12_381_g2_pub
  | 0xec -> Some `X25519_pub
  | 0xed -> Some `Ed25519_pub
  | 0xee -> Some `Bls12_381_g1g2_pub
  | 0xf0 -> Some `Dash_block
  | 0xf1 -> Some `Dash_tx
  | 0xfa -> Some `Swarm_manifest
  | 0xfb -> Some `Swarm_feed
  | 0x0111 -> Some `Udp
  | 0x0113 -> Some `P2p_webrtc_star
  | 0x0114 -> Some `P2p_webrtc_direct
  | 0x0115 -> Some `P2p_stardust
  | 0x0122 -> Some `P2p_circuit
  | 0x0129 -> Some `Dag_json
  | 0x012d -> Some `Udt
  | 0x012e -> Some `Utp
  | 0x0190 -> Some `Unix
  | 0x0196 -> Some `Thread
  | 0x01a5 -> Some `P2p
  | 0x01bb -> Some `Https
  | 0x01bc -> Some `Onion
  | 0x01bd -> Some `Onion3
  | 0x01be -> Some `Garlic64
  | 0x01bf -> Some `Garlic32
  | 0x01c0 -> Some `Tls
  | 0x01c6 -> Some `Noise
  | 0x01cc -> Some `Quic
  | 0x01dd -> Some `Ws
  | 0x01de -> Some `Wss
  | 0x01df -> Some `P2p_websocket_star
  | 0x01e0 -> Some `Http
  | 0x01f0 -> Some `Swhid_1_snp
  | 0x0200 -> Some `Json
  | 0x0201 -> Some `Messagepack
  | 0x0301 -> Some `Libp2p_peer_record
  | 0x0302 -> Some `Libp2p_relay_rsvp
  | 0x0400 -> Some `Car_index_sorted
  | 0x0401 -> Some `Car_multihash_index_sorted
  | 0x1012 -> Some `Sha2_256_trunc254_padded
  | 0x1013 -> Some `Sha2_224
  | 0x1014 -> Some `Sha2_512_224
  | 0x1015 -> Some `Sha2_512_256
  | 0x1052 -> Some `Ripemd_128
  | 0x1053 -> Some `Ripemd_160
  | 0x1054 -> Some `Ripemd_256
  | 0x1055 -> Some `Ripemd_320
  | 0x1100 -> Some `X11
  | 0x1200 -> Some `P256_pub
  | 0x1201 -> Some `P384_pub
  | 0x1202 -> Some `P521_pub
  | 0x1203 -> Some `Ed448_pub
  | 0x1204 -> Some `X448_pub
  | 0x1205 -> Some `Rsa_pub
  | 0x1300 -> Some `Ed25519_priv
  | 0x1301 -> Some `Secp256k1_priv
  | 0x1302 -> Some `X25519_priv
  | 0x1d01 -> Some `Kangarootwelve
  | 0x534d -> Some `Sm3_256
  | 0xb201 -> Some `Blake2b_8
  | 0xb202 -> Some `Blake2b_16
  | 0xb203 -> Some `Blake2b_24
  | 0xb204 -> Some `Blake2b_32
  | 0xb205 -> Some `Blake2b_40
  | 0xb206 -> Some `Blake2b_48
  | 0xb207 -> Some `Blake2b_56
  | 0xb208 -> Some `Blake2b_64
  | 0xb209 -> Some `Blake2b_72
  | 0xb20a -> Some `Blake2b_80
  | 0xb20b -> Some `Blake2b_88
  | 0xb20c -> Some `Blake2b_96
  | 0xb20d -> Some `Blake2b_104
  | 0xb20e -> Some `Blake2b_112
  | 0xb20f -> Some `Blake2b_120
  | 0xb210 -> Some `Blake2b_128
  | 0xb211 -> Some `Blake2b_136
  | 0xb212 -> Some `Blake2b_144
  | 0xb213 -> Some `Blake2b_152
  | 0xb214 -> Some `Blake2b_160
  | 0xb215 -> Some `Blake2b_168
  | 0xb216 -> Some `Blake2b_176
  | 0xb217 -> Some `Blake2b_184
  | 0xb218 -> Some `Blake2b_192
  | 0xb219 -> Some `Blake2b_200
  | 0xb21a -> Some `Blake2b_208
  | 0xb21b -> Some `Blake2b_216
  | 0xb21c -> Some `Blake2b_224
  | 0xb21d -> Some `Blake2b_232
  | 0xb21e -> Some `Blake2b_240
  | 0xb21f -> Some `Blake2b_248
  | 0xb220 -> Some `Blake2b_256
  | 0xb221 -> Some `Blake2b_264
  | 0xb222 -> Some `Blake2b_272
  | 0xb223 -> Some `Blake2b_280
  | 0xb224 -> Some `Blake2b_288
  | 0xb225 -> Some `Blake2b_296
  | 0xb226 -> Some `Blake2b_304
  | 0xb227 -> Some `Blake2b_312
  | 0xb228 -> Some `Blake2b_320
  | 0xb229 -> Some `Blake2b_328
  | 0xb22a -> Some `Blake2b_336
  | 0xb22b -> Some `Blake2b_344
  | 0xb22c -> Some `Blake2b_352
  | 0xb22d -> Some `Blake2b_360
  | 0xb22e -> Some `Blake2b_368
  | 0xb22f -> Some `Blake2b_376
  | 0xb230 -> Some `Blake2b_384
  | 0xb231 -> Some `Blake2b_392
  | 0xb232 -> Some `Blake2b_400
  | 0xb233 -> Some `Blake2b_408
  | 0xb234 -> Some `Blake2b_416
  | 0xb235 -> Some `Blake2b_424
  | 0xb236 -> Some `Blake2b_432
  | 0xb237 -> Some `Blake2b_440
  | 0xb238 -> Some `Blake2b_448
  | 0xb239 -> Some `Blake2b_456
  | 0xb23a -> Some `Blake2b_464
  | 0xb23b -> Some `Blake2b_472
  | 0xb23c -> Some `Blake2b_480
  | 0xb23d -> Some `Blake2b_488
  | 0xb23e -> Some `Blake2b_496
  | 0xb23f -> Some `Blake2b_504
  | 0xb240 -> Some `Blake2b_512
  | 0xb241 -> Some `Blake2s_8
  | 0xb242 -> Some `Blake2s_16
  | 0xb243 -> Some `Blake2s_24
  | 0xb244 -> Some `Blake2s_32
  | 0xb245 -> Some `Blake2s_40
  | 0xb246 -> Some `Blake2s_48
  | 0xb247 -> Some `Blake2s_56
  | 0xb248 -> Some `Blake2s_64
  | 0xb249 -> Some `Blake2s_72
  | 0xb24a -> Some `Blake2s_80
  | 0xb24b -> Some `Blake2s_88
  | 0xb24c -> Some `Blake2s_96
  | 0xb24d -> Some `Blake2s_104
  | 0xb24e -> Some `Blake2s_112
  | 0xb24f -> Some `Blake2s_120
  | 0xb250 -> Some `Blake2s_128
  | 0xb251 -> Some `Blake2s_136
  | 0xb252 -> Some `Blake2s_144
  | 0xb253 -> Some `Blake2s_152
  | 0xb254 -> Some `Blake2s_160
  | 0xb255 -> Some `Blake2s_168
  | 0xb256 -> Some `Blake2s_176
  | 0xb257 -> Some `Blake2s_184
  | 0xb258 -> Some `Blake2s_192
  | 0xb259 -> Some `Blake2s_200
  | 0xb25a -> Some `Blake2s_208
  | 0xb25b -> Some `Blake2s_216
  | 0xb25c -> Some `Blake2s_224
  | 0xb25d -> Some `Blake2s_232
  | 0xb25e -> Some `Blake2s_240
  | 0xb25f -> Some `Blake2s_248
  | 0xb260 -> Some `Blake2s_256
  | 0xb301 -> Some `Skein256_8
  | 0xb302 -> Some `Skein256_16
  | 0xb303 -> Some `Skein256_24
  | 0xb304 -> Some `Skein256_32
  | 0xb305 -> Some `Skein256_40
  | 0xb306 -> Some `Skein256_48
  | 0xb307 -> Some `Skein256_56
  | 0xb308 -> Some `Skein256_64
  | 0xb309 -> Some `Skein256_72
  | 0xb30a -> Some `Skein256_80
  | 0xb30b -> Some `Skein256_88
  | 0xb30c -> Some `Skein256_96
  | 0xb30d -> Some `Skein256_104
  | 0xb30e -> Some `Skein256_112
  | 0xb30f -> Some `Skein256_120
  | 0xb310 -> Some `Skein256_128
  | 0xb311 -> Some `Skein256_136
  | 0xb312 -> Some `Skein256_144
  | 0xb313 -> Some `Skein256_152
  | 0xb314 -> Some `Skein256_160
  | 0xb315 -> Some `Skein256_168
  | 0xb316 -> Some `Skein256_176
  | 0xb317 -> Some `Skein256_184
  | 0xb318 -> Some `Skein256_192
  | 0xb319 -> Some `Skein256_200
  | 0xb31a -> Some `Skein256_208
  | 0xb31b -> Some `Skein256_216
  | 0xb31c -> Some `Skein256_224
  | 0xb31d -> Some `Skein256_232
  | 0xb31e -> Some `Skein256_240
  | 0xb31f -> Some `Skein256_248
  | 0xb320 -> Some `Skein256_256
  | 0xb321 -> Some `Skein512_8
  | 0xb322 -> Some `Skein512_16
  | 0xb323 -> Some `Skein512_24
  | 0xb324 -> Some `Skein512_32
  | 0xb325 -> Some `Skein512_40
  | 0xb326 -> Some `Skein512_48
  | 0xb327 -> Some `Skein512_56
  | 0xb328 -> Some `Skein512_64
  | 0xb329 -> Some `Skein512_72
  | 0xb32a -> Some `Skein512_80
  | 0xb32b -> Some `Skein512_88
  | 0xb32c -> Some `Skein512_96
  | 0xb32d -> Some `Skein512_104
  | 0xb32e -> Some `Skein512_112
  | 0xb32f -> Some `Skein512_120
  | 0xb330 -> Some `Skein512_128
  | 0xb331 -> Some `Skein512_136
  | 0xb332 -> Some `Skein512_144
  | 0xb333 -> Some `Skein512_152
  | 0xb334 -> Some `Skein512_160
  | 0xb335 -> Some `Skein512_168
  | 0xb336 -> Some `Skein512_176
  | 0xb337 -> Some `Skein512_184
  | 0xb338 -> Some `Skein512_192
  | 0xb339 -> Some `Skein512_200
  | 0xb33a -> Some `Skein512_208
  | 0xb33b -> Some `Skein512_216
  | 0xb33c -> Some `Skein512_224
  | 0xb33d -> Some `Skein512_232
  | 0xb33e -> Some `Skein512_240
  | 0xb33f -> Some `Skein512_248
  | 0xb340 -> Some `Skein512_256
  | 0xb341 -> Some `Skein512_264
  | 0xb342 -> Some `Skein512_272
  | 0xb343 -> Some `Skein512_280
  | 0xb344 -> Some `Skein512_288
  | 0xb345 -> Some `Skein512_296
  | 0xb346 -> Some `Skein512_304
  | 0xb347 -> Some `Skein512_312
  | 0xb348 -> Some `Skein512_320
  | 0xb349 -> Some `Skein512_328
  | 0xb34a -> Some `Skein512_336
  | 0xb34b -> Some `Skein512_344
  | 0xb34c -> Some `Skein512_352
  | 0xb34d -> Some `Skein512_360
  | 0xb34e -> Some `Skein512_368
  | 0xb34f -> Some `Skein512_376
  | 0xb350 -> Some `Skein512_384
  | 0xb351 -> Some `Skein512_392
  | 0xb352 -> Some `Skein512_400
  | 0xb353 -> Some `Skein512_408
  | 0xb354 -> Some `Skein512_416
  | 0xb355 -> Some `Skein512_424
  | 0xb356 -> Some `Skein512_432
  | 0xb357 -> Some `Skein512_440
  | 0xb358 -> Some `Skein512_448
  | 0xb359 -> Some `Skein512_456
  | 0xb35a -> Some `Skein512_464
  | 0xb35b -> Some `Skein512_472
  | 0xb35c -> Some `Skein512_480
  | 0xb35d -> Some `Skein512_488
  | 0xb35e -> Some `Skein512_496
  | 0xb35f -> Some `Skein512_504
  | 0xb360 -> Some `Skein512_512
  | 0xb361 -> Some `Skein1024_8
  | 0xb362 -> Some `Skein1024_16
  | 0xb363 -> Some `Skein1024_24
  | 0xb364 -> Some `Skein1024_32
  | 0xb365 -> Some `Skein1024_40
  | 0xb366 -> Some `Skein1024_48
  | 0xb367 -> Some `Skein1024_56
  | 0xb368 -> Some `Skein1024_64
  | 0xb369 -> Some `Skein1024_72
  | 0xb36a -> Some `Skein1024_80
  | 0xb36b -> Some `Skein1024_88
  | 0xb36c -> Some `Skein1024_96
  | 0xb36d -> Some `Skein1024_104
  | 0xb36e -> Some `Skein1024_112
  | 0xb36f -> Some `Skein1024_120
  | 0xb370 -> Some `Skein1024_128
  | 0xb371 -> Some `Skein1024_136
  | 0xb372 -> Some `Skein1024_144
  | 0xb373 -> Some `Skein1024_152
  | 0xb374 -> Some `Skein1024_160
  | 0xb375 -> Some `Skein1024_168
  | 0xb376 -> Some `Skein1024_176
  | 0xb377 -> Some `Skein1024_184
  | 0xb378 -> Some `Skein1024_192
  | 0xb379 -> Some `Skein1024_200
  | 0xb37a -> Some `Skein1024_208
  | 0xb37b -> Some `Skein1024_216
  | 0xb37c -> Some `Skein1024_224
  | 0xb37d -> Some `Skein1024_232
  | 0xb37e -> Some `Skein1024_240
  | 0xb37f -> Some `Skein1024_248
  | 0xb380 -> Some `Skein1024_256
  | 0xb381 -> Some `Skein1024_264
  | 0xb382 -> Some `Skein1024_272
  | 0xb383 -> Some `Skein1024_280
  | 0xb384 -> Some `Skein1024_288
  | 0xb385 -> Some `Skein1024_296
  | 0xb386 -> Some `Skein1024_304
  | 0xb387 -> Some `Skein1024_312
  | 0xb388 -> Some `Skein1024_320
  | 0xb389 -> Some `Skein1024_328
  | 0xb38a -> Some `Skein1024_336
  | 0xb38b -> Some `Skein1024_344
  | 0xb38c -> Some `Skein1024_352
  | 0xb38d -> Some `Skein1024_360
  | 0xb38e -> Some `Skein1024_368
  | 0xb38f -> Some `Skein1024_376
  | 0xb390 -> Some `Skein1024_384
  | 0xb391 -> Some `Skein1024_392
  | 0xb392 -> Some `Skein1024_400
  | 0xb393 -> Some `Skein1024_408
  | 0xb394 -> Some `Skein1024_416
  | 0xb395 -> Some `Skein1024_424
  | 0xb396 -> Some `Skein1024_432
  | 0xb397 -> Some `Skein1024_440
  | 0xb398 -> Some `Skein1024_448
  | 0xb399 -> Some `Skein1024_456
  | 0xb39a -> Some `Skein1024_464
  | 0xb39b -> Some `Skein1024_472
  | 0xb39c -> Some `Skein1024_480
  | 0xb39d -> Some `Skein1024_488
  | 0xb39e -> Some `Skein1024_496
  | 0xb39f -> Some `Skein1024_504
  | 0xb3a0 -> Some `Skein1024_512
  | 0xb3a1 -> Some `Skein1024_520
  | 0xb3a2 -> Some `Skein1024_528
  | 0xb3a3 -> Some `Skein1024_536
  | 0xb3a4 -> Some `Skein1024_544
  | 0xb3a5 -> Some `Skein1024_552
  | 0xb3a6 -> Some `Skein1024_560
  | 0xb3a7 -> Some `Skein1024_568
  | 0xb3a8 -> Some `Skein1024_576
  | 0xb3a9 -> Some `Skein1024_584
  | 0xb3aa -> Some `Skein1024_592
  | 0xb3ab -> Some `Skein1024_600
  | 0xb3ac -> Some `Skein1024_608
  | 0xb3ad -> Some `Skein1024_616
  | 0xb3ae -> Some `Skein1024_624
  | 0xb3af -> Some `Skein1024_632
  | 0xb3b0 -> Some `Skein1024_640
  | 0xb3b1 -> Some `Skein1024_648
  | 0xb3b2 -> Some `Skein1024_656
  | 0xb3b3 -> Some `Skein1024_664
  | 0xb3b4 -> Some `Skein1024_672
  | 0xb3b5 -> Some `Skein1024_680
  | 0xb3b6 -> Some `Skein1024_688
  | 0xb3b7 -> Some `Skein1024_696
  | 0xb3b8 -> Some `Skein1024_704
  | 0xb3b9 -> Some `Skein1024_712
  | 0xb3ba -> Some `Skein1024_720
  | 0xb3bb -> Some `Skein1024_728
  | 0xb3bc -> Some `Skein1024_736
  | 0xb3bd -> Some `Skein1024_744
  | 0xb3be -> Some `Skein1024_752
  | 0xb3bf -> Some `Skein1024_760
  | 0xb3c0 -> Some `Skein1024_768
  | 0xb3c1 -> Some `Skein1024_776
  | 0xb3c2 -> Some `Skein1024_784
  | 0xb3c3 -> Some `Skein1024_792
  | 0xb3c4 -> Some `Skein1024_800
  | 0xb3c5 -> Some `Skein1024_808
  | 0xb3c6 -> Some `Skein1024_816
  | 0xb3c7 -> Some `Skein1024_824
  | 0xb3c8 -> Some `Skein1024_832
  | 0xb3c9 -> Some `Skein1024_840
  | 0xb3ca -> Some `Skein1024_848
  | 0xb3cb -> Some `Skein1024_856
  | 0xb3cc -> Some `Skein1024_864
  | 0xb3cd -> Some `Skein1024_872
  | 0xb3ce -> Some `Skein1024_880
  | 0xb3cf -> Some `Skein1024_888
  | 0xb3d0 -> Some `Skein1024_896
  | 0xb3d1 -> Some `Skein1024_904
  | 0xb3d2 -> Some `Skein1024_912
  | 0xb3d3 -> Some `Skein1024_920
  | 0xb3d4 -> Some `Skein1024_928
  | 0xb3d5 -> Some `Skein1024_936
  | 0xb3d6 -> Some `Skein1024_944
  | 0xb3d7 -> Some `Skein1024_952
  | 0xb3d8 -> Some `Skein1024_960
  | 0xb3d9 -> Some `Skein1024_968
  | 0xb3da -> Some `Skein1024_976
  | 0xb3db -> Some `Skein1024_984
  | 0xb3dc -> Some `Skein1024_992
  | 0xb3dd -> Some `Skein1024_1000
  | 0xb3de -> Some `Skein1024_1008
  | 0xb3df -> Some `Skein1024_1016
  | 0xb3e0 -> Some `Skein1024_1024
  | 0xb401 -> Some `Poseidon_bls12_381_a2_fc1
  | 0xb402 -> Some `Poseidon_bls12_381_a2_fc1_sc
  | 0xce11 -> Some `Zeroxcert_imprint_256
  | 0xf101 -> Some `Fil_commitment_unsealed
  | 0xf102 -> Some `Fil_commitment_sealed
  | 0x706c61 -> Some `Plaintextv2
  | 0x807124 -> Some `Holochain_adr_v0
  | 0x817124 -> Some `Holochain_adr_v1
  | 0x947124 -> Some `Holochain_key_v0
  | 0x957124 -> Some `Holochain_key_v1
  | 0xa27124 -> Some `Holochain_sig_v0
  | 0xa37124 -> Some `Holochain_sig_v1
  | 0xb19910 -> Some `Skynet_ns
  | 0xb29910 -> Some `Arweave_ns
  | _ -> None

let filecoin_to_string = function
  | `Fil_commitment_unsealed -> "fil-commitment-unsealed"
  | `Fil_commitment_sealed -> "fil-commitment-sealed"

let holochain_to_string = function
  | `Holochain_adr_v0 -> "holochain-adr-v0"
  | `Holochain_adr_v1 -> "holochain-adr-v1"
  | `Holochain_key_v0 -> "holochain-key-v0"
  | `Holochain_key_v1 -> "holochain-key-v1"
  | `Holochain_sig_v0 -> "holochain-sig-v0"
  | `Holochain_sig_v1 -> "holochain-sig-v1"

let ipld_to_string = function
  | `Cidv1 -> "cidv1"
  | `Cidv2 -> "cidv2"
  | `Cidv3 -> "cidv3"
  | `Raw -> "raw"
  | `Dag_pb -> "dag-pb"
  | `Dag_cbor -> "dag-cbor"
  | `Libp2p_key -> "libp2p-key"
  | `Git_raw -> "git-raw"
  | `Torrent_info -> "torrent-info"
  | `Torrent_file -> "torrent-file"
  | `Leofcoin_block -> "leofcoin-block"
  | `Leofcoin_tx -> "leofcoin-tx"
  | `Leofcoin_pr -> "leofcoin-pr"
  | `Dag_jose -> "dag-jose"
  | `Dag_cose -> "dag-cose"
  | `Eth_block -> "eth-block"
  | `Eth_block_list -> "eth-block-list"
  | `Eth_tx_trie -> "eth-tx-trie"
  | `Eth_tx -> "eth-tx"
  | `Eth_tx_receipt_trie -> "eth-tx-receipt-trie"
  | `Eth_tx_receipt -> "eth-tx-receipt"
  | `Eth_state_trie -> "eth-state-trie"
  | `Eth_account_snapshot -> "eth-account-snapshot"
  | `Eth_storage_trie -> "eth-storage-trie"
  | `Eth_receipt_log_trie -> "eth-receipt-log-trie"
  | `Eth_reciept_log -> "eth-reciept-log"
  | `Bitcoin_block -> "bitcoin-block"
  | `Bitcoin_tx -> "bitcoin-tx"
  | `Bitcoin_witness_commitment -> "bitcoin-witness-commitment"
  | `Zcash_block -> "zcash-block"
  | `Zcash_tx -> "zcash-tx"
  | `Stellar_block -> "stellar-block"
  | `Stellar_tx -> "stellar-tx"
  | `Decred_block -> "decred-block"
  | `Decred_tx -> "decred-tx"
  | `Dash_block -> "dash-block"
  | `Dash_tx -> "dash-tx"
  | `Swarm_manifest -> "swarm-manifest"
  | `Swarm_feed -> "swarm-feed"
  | `Dag_json -> "dag-json"
  | `Swhid_1_snp -> "swhid-1-snp"

let key_to_string = function
  | `Aes_128 -> "aes-128"
  | `Aes_192 -> "aes-192"
  | `Aes_256 -> "aes-256"
  | `Chacha_128 -> "chacha-128"
  | `Chacha_256 -> "chacha-256"
  | `Secp256k1_pub -> "secp256k1-pub"
  | `Bls12_381_g1_pub -> "bls12_381-g1-pub"
  | `Bls12_381_g2_pub -> "bls12_381-g2-pub"
  | `X25519_pub -> "x25519-pub"
  | `Ed25519_pub -> "ed25519-pub"
  | `Bls12_381_g1g2_pub -> "bls12_381-g1g2-pub"
  | `P256_pub -> "p256-pub"
  | `P384_pub -> "p384-pub"
  | `P521_pub -> "p521-pub"
  | `Ed448_pub -> "ed448-pub"
  | `X448_pub -> "x448-pub"
  | `Rsa_pub -> "rsa-pub"
  | `Ed25519_priv -> "ed25519-priv"
  | `Secp256k1_priv -> "secp256k1-priv"
  | `X25519_priv -> "x25519-priv"

let libp2p_to_string = function
  | `Libp2p_peer_record -> "libp2p-peer-record"
  | `Libp2p_relay_rsvp -> "libp2p-relay-rsvp"

let multiaddr_to_string = function
  | `Ip4 -> "ip4"
  | `Tcp -> "tcp"
  | `Dccp -> "dccp"
  | `Ip6 -> "ip6"
  | `Ip6zone -> "ip6zone"
  | `Dns -> "dns"
  | `Dns4 -> "dns4"
  | `Dns6 -> "dns6"
  | `Dnsaddr -> "dnsaddr"
  | `Sctp -> "sctp"
  | `Udp -> "udp"
  | `P2p_webrtc_star -> "p2p-webrtc-star"
  | `P2p_webrtc_direct -> "p2p-webrtc-direct"
  | `P2p_stardust -> "p2p-stardust"
  | `P2p_circuit -> "p2p-circuit"
  | `Udt -> "udt"
  | `Utp -> "utp"
  | `Unix -> "unix"
  | `Thread -> "thread"
  | `P2p -> "p2p"
  | `Https -> "https"
  | `Onion -> "onion"
  | `Onion3 -> "onion3"
  | `Garlic64 -> "garlic64"
  | `Garlic32 -> "garlic32"
  | `Tls -> "tls"
  | `Noise -> "noise"
  | `Quic -> "quic"
  | `Ws -> "ws"
  | `Wss -> "wss"
  | `P2p_websocket_star -> "p2p-websocket-star"
  | `Http -> "http"
  | `Plaintextv2 -> "plaintextv2"

let multiformat_to_string = function
  | `Multicodec -> "multicodec"
  | `Multihash -> "multihash"
  | `Multiaddr -> "multiaddr"
  | `Multibase -> "multibase"
  | `Caip_50 -> "caip-50"

let multihash_to_string = function
  | `Identity -> "identity"
  | `Sha1 -> "sha1"
  | `Sha2_256 -> "sha2-256"
  | `Sha2_512 -> "sha2-512"
  | `Sha3_512 -> "sha3-512"
  | `Sha3_384 -> "sha3-384"
  | `Sha3_256 -> "sha3-256"
  | `Sha3_224 -> "sha3-224"
  | `Shake_128 -> "shake-128"
  | `Shake_256 -> "shake-256"
  | `Keccak_224 -> "keccak-224"
  | `Keccak_256 -> "keccak-256"
  | `Keccak_384 -> "keccak-384"
  | `Keccak_512 -> "keccak-512"
  | `Blake3 -> "blake3"
  | `Sha2_384 -> "sha2-384"
  | `Murmur3_128 -> "murmur3-128"
  | `Murmur3_32 -> "murmur3-32"
  | `Dbl_sha2_256 -> "dbl-sha2-256"
  | `Md4 -> "md4"
  | `Md5 -> "md5"
  | `Bmt -> "bmt"
  | `Sha2_256_trunc254_padded -> "sha2-256-trunc254-padded"
  | `Sha2_224 -> "sha2-224"
  | `Sha2_512_224 -> "sha2-512-224"
  | `Sha2_512_256 -> "sha2-512-256"
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
  | `Skein512_64 -> "skein512-64"
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
  | `Poseidon_bls12_381_a2_fc1 -> "poseidon-bls12_381-a2-fc1"
  | `Poseidon_bls12_381_a2_fc1_sc -> "poseidon-bls12_381-a2-fc1-sc"

let namespace_to_string = function
  | `Path -> "path"
  | `Streamid -> "streamid"
  | `Ipld_ns -> "ipld-ns"
  | `Ipfs_ns -> "ipfs-ns"
  | `Swarm_ns -> "swarm-ns"
  | `Ipns_ns -> "ipns-ns"
  | `Zeronet -> "zeronet"
  | `Skynet_ns -> "skynet-ns"
  | `Arweave_ns -> "arweave-ns"

let serialization_to_string = function
  | `Protobuf -> "protobuf"
  | `Cbor -> "cbor"
  | `Rlp -> "rlp"
  | `Bencode -> "bencode"
  | `Json -> "json"
  | `Messagepack -> "messagepack"
  | `Car_index_sorted -> "car-index-sorted"
  | `Car_multihash_index_sorted -> "car-multihash-index-sorted"

let zeroxcert_to_string = function
  | `Zeroxcert_imprint_256 -> "zeroxcert-imprint-256"

let to_string : t -> string = function
  | `Identity -> "identity"
  | `Cidv1 -> "cidv1"
  | `Cidv2 -> "cidv2"
  | `Cidv3 -> "cidv3"
  | `Ip4 -> "ip4"
  | `Tcp -> "tcp"
  | `Sha1 -> "sha1"
  | `Sha2_256 -> "sha2-256"
  | `Sha2_512 -> "sha2-512"
  | `Sha3_512 -> "sha3-512"
  | `Sha3_384 -> "sha3-384"
  | `Sha3_256 -> "sha3-256"
  | `Sha3_224 -> "sha3-224"
  | `Shake_128 -> "shake-128"
  | `Shake_256 -> "shake-256"
  | `Keccak_224 -> "keccak-224"
  | `Keccak_256 -> "keccak-256"
  | `Keccak_384 -> "keccak-384"
  | `Keccak_512 -> "keccak-512"
  | `Blake3 -> "blake3"
  | `Sha2_384 -> "sha2-384"
  | `Dccp -> "dccp"
  | `Murmur3_128 -> "murmur3-128"
  | `Murmur3_32 -> "murmur3-32"
  | `Ip6 -> "ip6"
  | `Ip6zone -> "ip6zone"
  | `Path -> "path"
  | `Multicodec -> "multicodec"
  | `Multihash -> "multihash"
  | `Multiaddr -> "multiaddr"
  | `Multibase -> "multibase"
  | `Dns -> "dns"
  | `Dns4 -> "dns4"
  | `Dns6 -> "dns6"
  | `Dnsaddr -> "dnsaddr"
  | `Protobuf -> "protobuf"
  | `Cbor -> "cbor"
  | `Raw -> "raw"
  | `Dbl_sha2_256 -> "dbl-sha2-256"
  | `Rlp -> "rlp"
  | `Bencode -> "bencode"
  | `Dag_pb -> "dag-pb"
  | `Dag_cbor -> "dag-cbor"
  | `Libp2p_key -> "libp2p-key"
  | `Git_raw -> "git-raw"
  | `Torrent_info -> "torrent-info"
  | `Torrent_file -> "torrent-file"
  | `Leofcoin_block -> "leofcoin-block"
  | `Leofcoin_tx -> "leofcoin-tx"
  | `Leofcoin_pr -> "leofcoin-pr"
  | `Sctp -> "sctp"
  | `Dag_jose -> "dag-jose"
  | `Dag_cose -> "dag-cose"
  | `Eth_block -> "eth-block"
  | `Eth_block_list -> "eth-block-list"
  | `Eth_tx_trie -> "eth-tx-trie"
  | `Eth_tx -> "eth-tx"
  | `Eth_tx_receipt_trie -> "eth-tx-receipt-trie"
  | `Eth_tx_receipt -> "eth-tx-receipt"
  | `Eth_state_trie -> "eth-state-trie"
  | `Eth_account_snapshot -> "eth-account-snapshot"
  | `Eth_storage_trie -> "eth-storage-trie"
  | `Eth_receipt_log_trie -> "eth-receipt-log-trie"
  | `Eth_reciept_log -> "eth-reciept-log"
  | `Aes_128 -> "aes-128"
  | `Aes_192 -> "aes-192"
  | `Aes_256 -> "aes-256"
  | `Chacha_128 -> "chacha-128"
  | `Chacha_256 -> "chacha-256"
  | `Bitcoin_block -> "bitcoin-block"
  | `Bitcoin_tx -> "bitcoin-tx"
  | `Bitcoin_witness_commitment -> "bitcoin-witness-commitment"
  | `Zcash_block -> "zcash-block"
  | `Zcash_tx -> "zcash-tx"
  | `Caip_50 -> "caip-50"
  | `Streamid -> "streamid"
  | `Stellar_block -> "stellar-block"
  | `Stellar_tx -> "stellar-tx"
  | `Md4 -> "md4"
  | `Md5 -> "md5"
  | `Bmt -> "bmt"
  | `Decred_block -> "decred-block"
  | `Decred_tx -> "decred-tx"
  | `Ipld_ns -> "ipld-ns"
  | `Ipfs_ns -> "ipfs-ns"
  | `Swarm_ns -> "swarm-ns"
  | `Ipns_ns -> "ipns-ns"
  | `Zeronet -> "zeronet"
  | `Secp256k1_pub -> "secp256k1-pub"
  | `Bls12_381_g1_pub -> "bls12_381-g1-pub"
  | `Bls12_381_g2_pub -> "bls12_381-g2-pub"
  | `X25519_pub -> "x25519-pub"
  | `Ed25519_pub -> "ed25519-pub"
  | `Bls12_381_g1g2_pub -> "bls12_381-g1g2-pub"
  | `Dash_block -> "dash-block"
  | `Dash_tx -> "dash-tx"
  | `Swarm_manifest -> "swarm-manifest"
  | `Swarm_feed -> "swarm-feed"
  | `Udp -> "udp"
  | `P2p_webrtc_star -> "p2p-webrtc-star"
  | `P2p_webrtc_direct -> "p2p-webrtc-direct"
  | `P2p_stardust -> "p2p-stardust"
  | `P2p_circuit -> "p2p-circuit"
  | `Dag_json -> "dag-json"
  | `Udt -> "udt"
  | `Utp -> "utp"
  | `Unix -> "unix"
  | `Thread -> "thread"
  | `P2p -> "p2p"
  | `Https -> "https"
  | `Onion -> "onion"
  | `Onion3 -> "onion3"
  | `Garlic64 -> "garlic64"
  | `Garlic32 -> "garlic32"
  | `Tls -> "tls"
  | `Noise -> "noise"
  | `Quic -> "quic"
  | `Ws -> "ws"
  | `Wss -> "wss"
  | `P2p_websocket_star -> "p2p-websocket-star"
  | `Http -> "http"
  | `Swhid_1_snp -> "swhid-1-snp"
  | `Json -> "json"
  | `Messagepack -> "messagepack"
  | `Libp2p_peer_record -> "libp2p-peer-record"
  | `Libp2p_relay_rsvp -> "libp2p-relay-rsvp"
  | `Car_index_sorted -> "car-index-sorted"
  | `Car_multihash_index_sorted -> "car-multihash-index-sorted"
  | `Sha2_256_trunc254_padded -> "sha2-256-trunc254-padded"
  | `Sha2_224 -> "sha2-224"
  | `Sha2_512_224 -> "sha2-512-224"
  | `Sha2_512_256 -> "sha2-512-256"
  | `Ripemd_128 -> "ripemd-128"
  | `Ripemd_160 -> "ripemd-160"
  | `Ripemd_256 -> "ripemd-256"
  | `Ripemd_320 -> "ripemd-320"
  | `X11 -> "x11"
  | `P256_pub -> "p256-pub"
  | `P384_pub -> "p384-pub"
  | `P521_pub -> "p521-pub"
  | `Ed448_pub -> "ed448-pub"
  | `X448_pub -> "x448-pub"
  | `Rsa_pub -> "rsa-pub"
  | `Ed25519_priv -> "ed25519-priv"
  | `Secp256k1_priv -> "secp256k1-priv"
  | `X25519_priv -> "x25519-priv"
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
  | `Skein512_64 -> "skein512-64"
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
  | `Poseidon_bls12_381_a2_fc1 -> "poseidon-bls12_381-a2-fc1"
  | `Poseidon_bls12_381_a2_fc1_sc -> "poseidon-bls12_381-a2-fc1-sc"
  | `Zeroxcert_imprint_256 -> "zeroxcert-imprint-256"
  | `Fil_commitment_unsealed -> "fil-commitment-unsealed"
  | `Fil_commitment_sealed -> "fil-commitment-sealed"
  | `Plaintextv2 -> "plaintextv2"
  | `Holochain_adr_v0 -> "holochain-adr-v0"
  | `Holochain_adr_v1 -> "holochain-adr-v1"
  | `Holochain_key_v0 -> "holochain-key-v0"
  | `Holochain_key_v1 -> "holochain-key-v1"
  | `Holochain_sig_v0 -> "holochain-sig-v0"
  | `Holochain_sig_v1 -> "holochain-sig-v1"
  | `Skynet_ns -> "skynet-ns"
  | `Arweave_ns -> "arweave-ns"

let filecoin_of_string = function
  | "fil-commitment-unsealed" -> Some `Fil_commitment_unsealed
  | "fil-commitment-sealed" -> Some `Fil_commitment_sealed
  | _ -> None

let holochain_of_string = function
  | "holochain-adr-v0" -> Some `Holochain_adr_v0
  | "holochain-adr-v1" -> Some `Holochain_adr_v1
  | "holochain-key-v0" -> Some `Holochain_key_v0
  | "holochain-key-v1" -> Some `Holochain_key_v1
  | "holochain-sig-v0" -> Some `Holochain_sig_v0
  | "holochain-sig-v1" -> Some `Holochain_sig_v1
  | _ -> None

let ipld_of_string = function
  | "cidv1" -> Some `Cidv1
  | "cidv2" -> Some `Cidv2
  | "cidv3" -> Some `Cidv3
  | "raw" -> Some `Raw
  | "dag-pb" -> Some `Dag_pb
  | "dag-cbor" -> Some `Dag_cbor
  | "libp2p-key" -> Some `Libp2p_key
  | "git-raw" -> Some `Git_raw
  | "torrent-info" -> Some `Torrent_info
  | "torrent-file" -> Some `Torrent_file
  | "leofcoin-block" -> Some `Leofcoin_block
  | "leofcoin-tx" -> Some `Leofcoin_tx
  | "leofcoin-pr" -> Some `Leofcoin_pr
  | "dag-jose" -> Some `Dag_jose
  | "dag-cose" -> Some `Dag_cose
  | "eth-block" -> Some `Eth_block
  | "eth-block-list" -> Some `Eth_block_list
  | "eth-tx-trie" -> Some `Eth_tx_trie
  | "eth-tx" -> Some `Eth_tx
  | "eth-tx-receipt-trie" -> Some `Eth_tx_receipt_trie
  | "eth-tx-receipt" -> Some `Eth_tx_receipt
  | "eth-state-trie" -> Some `Eth_state_trie
  | "eth-account-snapshot" -> Some `Eth_account_snapshot
  | "eth-storage-trie" -> Some `Eth_storage_trie
  | "eth-receipt-log-trie" -> Some `Eth_receipt_log_trie
  | "eth-reciept-log" -> Some `Eth_reciept_log
  | "bitcoin-block" -> Some `Bitcoin_block
  | "bitcoin-tx" -> Some `Bitcoin_tx
  | "bitcoin-witness-commitment" -> Some `Bitcoin_witness_commitment
  | "zcash-block" -> Some `Zcash_block
  | "zcash-tx" -> Some `Zcash_tx
  | "stellar-block" -> Some `Stellar_block
  | "stellar-tx" -> Some `Stellar_tx
  | "decred-block" -> Some `Decred_block
  | "decred-tx" -> Some `Decred_tx
  | "dash-block" -> Some `Dash_block
  | "dash-tx" -> Some `Dash_tx
  | "swarm-manifest" -> Some `Swarm_manifest
  | "swarm-feed" -> Some `Swarm_feed
  | "dag-json" -> Some `Dag_json
  | "swhid-1-snp" -> Some `Swhid_1_snp
  | _ -> None

let key_of_string = function
  | "aes-128" -> Some `Aes_128
  | "aes-192" -> Some `Aes_192
  | "aes-256" -> Some `Aes_256
  | "chacha-128" -> Some `Chacha_128
  | "chacha-256" -> Some `Chacha_256
  | "secp256k1-pub" -> Some `Secp256k1_pub
  | "bls12_381-g1-pub" -> Some `Bls12_381_g1_pub
  | "bls12_381-g2-pub" -> Some `Bls12_381_g2_pub
  | "x25519-pub" -> Some `X25519_pub
  | "ed25519-pub" -> Some `Ed25519_pub
  | "bls12_381-g1g2-pub" -> Some `Bls12_381_g1g2_pub
  | "p256-pub" -> Some `P256_pub
  | "p384-pub" -> Some `P384_pub
  | "p521-pub" -> Some `P521_pub
  | "ed448-pub" -> Some `Ed448_pub
  | "x448-pub" -> Some `X448_pub
  | "rsa-pub" -> Some `Rsa_pub
  | "ed25519-priv" -> Some `Ed25519_priv
  | "secp256k1-priv" -> Some `Secp256k1_priv
  | "x25519-priv" -> Some `X25519_priv
  | _ -> None

let libp2p_of_string = function
  | "libp2p-peer-record" -> Some `Libp2p_peer_record
  | "libp2p-relay-rsvp" -> Some `Libp2p_relay_rsvp
  | _ -> None

let multiaddr_of_string = function
  | "ip4" -> Some `Ip4
  | "tcp" -> Some `Tcp
  | "dccp" -> Some `Dccp
  | "ip6" -> Some `Ip6
  | "ip6zone" -> Some `Ip6zone
  | "dns" -> Some `Dns
  | "dns4" -> Some `Dns4
  | "dns6" -> Some `Dns6
  | "dnsaddr" -> Some `Dnsaddr
  | "sctp" -> Some `Sctp
  | "udp" -> Some `Udp
  | "p2p-webrtc-star" -> Some `P2p_webrtc_star
  | "p2p-webrtc-direct" -> Some `P2p_webrtc_direct
  | "p2p-stardust" -> Some `P2p_stardust
  | "p2p-circuit" -> Some `P2p_circuit
  | "udt" -> Some `Udt
  | "utp" -> Some `Utp
  | "unix" -> Some `Unix
  | "thread" -> Some `Thread
  | "p2p" -> Some `P2p
  | "https" -> Some `Https
  | "onion" -> Some `Onion
  | "onion3" -> Some `Onion3
  | "garlic64" -> Some `Garlic64
  | "garlic32" -> Some `Garlic32
  | "tls" -> Some `Tls
  | "noise" -> Some `Noise
  | "quic" -> Some `Quic
  | "ws" -> Some `Ws
  | "wss" -> Some `Wss
  | "p2p-websocket-star" -> Some `P2p_websocket_star
  | "http" -> Some `Http
  | "plaintextv2" -> Some `Plaintextv2
  | _ -> None

let multiformat_of_string = function
  | "multicodec" -> Some `Multicodec
  | "multihash" -> Some `Multihash
  | "multiaddr" -> Some `Multiaddr
  | "multibase" -> Some `Multibase
  | "caip-50" -> Some `Caip_50
  | _ -> None

let multihash_of_string = function
  | "identity" -> Some `Identity
  | "sha1" -> Some `Sha1
  | "sha2-256" -> Some `Sha2_256
  | "sha2-512" -> Some `Sha2_512
  | "sha3-512" -> Some `Sha3_512
  | "sha3-384" -> Some `Sha3_384
  | "sha3-256" -> Some `Sha3_256
  | "sha3-224" -> Some `Sha3_224
  | "shake-128" -> Some `Shake_128
  | "shake-256" -> Some `Shake_256
  | "keccak-224" -> Some `Keccak_224
  | "keccak-256" -> Some `Keccak_256
  | "keccak-384" -> Some `Keccak_384
  | "keccak-512" -> Some `Keccak_512
  | "blake3" -> Some `Blake3
  | "sha2-384" -> Some `Sha2_384
  | "murmur3-128" -> Some `Murmur3_128
  | "murmur3-32" -> Some `Murmur3_32
  | "dbl-sha2-256" -> Some `Dbl_sha2_256
  | "md4" -> Some `Md4
  | "md5" -> Some `Md5
  | "bmt" -> Some `Bmt
  | "sha2-256-trunc254-padded" -> Some `Sha2_256_trunc254_padded
  | "sha2-224" -> Some `Sha2_224
  | "sha2-512-224" -> Some `Sha2_512_224
  | "sha2-512-256" -> Some `Sha2_512_256
  | "ripemd-128" -> Some `Ripemd_128
  | "ripemd-160" -> Some `Ripemd_160
  | "ripemd-256" -> Some `Ripemd_256
  | "ripemd-320" -> Some `Ripemd_320
  | "x11" -> Some `X11
  | "kangarootwelve" -> Some `Kangarootwelve
  | "sm3-256" -> Some `Sm3_256
  | "blake2b-8" -> Some `Blake2b_8
  | "blake2b-16" -> Some `Blake2b_16
  | "blake2b-24" -> Some `Blake2b_24
  | "blake2b-32" -> Some `Blake2b_32
  | "blake2b-40" -> Some `Blake2b_40
  | "blake2b-48" -> Some `Blake2b_48
  | "blake2b-56" -> Some `Blake2b_56
  | "blake2b-64" -> Some `Blake2b_64
  | "blake2b-72" -> Some `Blake2b_72
  | "blake2b-80" -> Some `Blake2b_80
  | "blake2b-88" -> Some `Blake2b_88
  | "blake2b-96" -> Some `Blake2b_96
  | "blake2b-104" -> Some `Blake2b_104
  | "blake2b-112" -> Some `Blake2b_112
  | "blake2b-120" -> Some `Blake2b_120
  | "blake2b-128" -> Some `Blake2b_128
  | "blake2b-136" -> Some `Blake2b_136
  | "blake2b-144" -> Some `Blake2b_144
  | "blake2b-152" -> Some `Blake2b_152
  | "blake2b-160" -> Some `Blake2b_160
  | "blake2b-168" -> Some `Blake2b_168
  | "blake2b-176" -> Some `Blake2b_176
  | "blake2b-184" -> Some `Blake2b_184
  | "blake2b-192" -> Some `Blake2b_192
  | "blake2b-200" -> Some `Blake2b_200
  | "blake2b-208" -> Some `Blake2b_208
  | "blake2b-216" -> Some `Blake2b_216
  | "blake2b-224" -> Some `Blake2b_224
  | "blake2b-232" -> Some `Blake2b_232
  | "blake2b-240" -> Some `Blake2b_240
  | "blake2b-248" -> Some `Blake2b_248
  | "blake2b-256" -> Some `Blake2b_256
  | "blake2b-264" -> Some `Blake2b_264
  | "blake2b-272" -> Some `Blake2b_272
  | "blake2b-280" -> Some `Blake2b_280
  | "blake2b-288" -> Some `Blake2b_288
  | "blake2b-296" -> Some `Blake2b_296
  | "blake2b-304" -> Some `Blake2b_304
  | "blake2b-312" -> Some `Blake2b_312
  | "blake2b-320" -> Some `Blake2b_320
  | "blake2b-328" -> Some `Blake2b_328
  | "blake2b-336" -> Some `Blake2b_336
  | "blake2b-344" -> Some `Blake2b_344
  | "blake2b-352" -> Some `Blake2b_352
  | "blake2b-360" -> Some `Blake2b_360
  | "blake2b-368" -> Some `Blake2b_368
  | "blake2b-376" -> Some `Blake2b_376
  | "blake2b-384" -> Some `Blake2b_384
  | "blake2b-392" -> Some `Blake2b_392
  | "blake2b-400" -> Some `Blake2b_400
  | "blake2b-408" -> Some `Blake2b_408
  | "blake2b-416" -> Some `Blake2b_416
  | "blake2b-424" -> Some `Blake2b_424
  | "blake2b-432" -> Some `Blake2b_432
  | "blake2b-440" -> Some `Blake2b_440
  | "blake2b-448" -> Some `Blake2b_448
  | "blake2b-456" -> Some `Blake2b_456
  | "blake2b-464" -> Some `Blake2b_464
  | "blake2b-472" -> Some `Blake2b_472
  | "blake2b-480" -> Some `Blake2b_480
  | "blake2b-488" -> Some `Blake2b_488
  | "blake2b-496" -> Some `Blake2b_496
  | "blake2b-504" -> Some `Blake2b_504
  | "blake2b-512" -> Some `Blake2b_512
  | "blake2s-8" -> Some `Blake2s_8
  | "blake2s-16" -> Some `Blake2s_16
  | "blake2s-24" -> Some `Blake2s_24
  | "blake2s-32" -> Some `Blake2s_32
  | "blake2s-40" -> Some `Blake2s_40
  | "blake2s-48" -> Some `Blake2s_48
  | "blake2s-56" -> Some `Blake2s_56
  | "blake2s-64" -> Some `Blake2s_64
  | "blake2s-72" -> Some `Blake2s_72
  | "blake2s-80" -> Some `Blake2s_80
  | "blake2s-88" -> Some `Blake2s_88
  | "blake2s-96" -> Some `Blake2s_96
  | "blake2s-104" -> Some `Blake2s_104
  | "blake2s-112" -> Some `Blake2s_112
  | "blake2s-120" -> Some `Blake2s_120
  | "blake2s-128" -> Some `Blake2s_128
  | "blake2s-136" -> Some `Blake2s_136
  | "blake2s-144" -> Some `Blake2s_144
  | "blake2s-152" -> Some `Blake2s_152
  | "blake2s-160" -> Some `Blake2s_160
  | "blake2s-168" -> Some `Blake2s_168
  | "blake2s-176" -> Some `Blake2s_176
  | "blake2s-184" -> Some `Blake2s_184
  | "blake2s-192" -> Some `Blake2s_192
  | "blake2s-200" -> Some `Blake2s_200
  | "blake2s-208" -> Some `Blake2s_208
  | "blake2s-216" -> Some `Blake2s_216
  | "blake2s-224" -> Some `Blake2s_224
  | "blake2s-232" -> Some `Blake2s_232
  | "blake2s-240" -> Some `Blake2s_240
  | "blake2s-248" -> Some `Blake2s_248
  | "blake2s-256" -> Some `Blake2s_256
  | "skein256-8" -> Some `Skein256_8
  | "skein256-16" -> Some `Skein256_16
  | "skein256-24" -> Some `Skein256_24
  | "skein256-32" -> Some `Skein256_32
  | "skein256-40" -> Some `Skein256_40
  | "skein256-48" -> Some `Skein256_48
  | "skein256-56" -> Some `Skein256_56
  | "skein256-64" -> Some `Skein256_64
  | "skein256-72" -> Some `Skein256_72
  | "skein256-80" -> Some `Skein256_80
  | "skein256-88" -> Some `Skein256_88
  | "skein256-96" -> Some `Skein256_96
  | "skein256-104" -> Some `Skein256_104
  | "skein256-112" -> Some `Skein256_112
  | "skein256-120" -> Some `Skein256_120
  | "skein256-128" -> Some `Skein256_128
  | "skein256-136" -> Some `Skein256_136
  | "skein256-144" -> Some `Skein256_144
  | "skein256-152" -> Some `Skein256_152
  | "skein256-160" -> Some `Skein256_160
  | "skein256-168" -> Some `Skein256_168
  | "skein256-176" -> Some `Skein256_176
  | "skein256-184" -> Some `Skein256_184
  | "skein256-192" -> Some `Skein256_192
  | "skein256-200" -> Some `Skein256_200
  | "skein256-208" -> Some `Skein256_208
  | "skein256-216" -> Some `Skein256_216
  | "skein256-224" -> Some `Skein256_224
  | "skein256-232" -> Some `Skein256_232
  | "skein256-240" -> Some `Skein256_240
  | "skein256-248" -> Some `Skein256_248
  | "skein256-256" -> Some `Skein256_256
  | "skein512-8" -> Some `Skein512_8
  | "skein512-16" -> Some `Skein512_16
  | "skein512-24" -> Some `Skein512_24
  | "skein512-32" -> Some `Skein512_32
  | "skein512-40" -> Some `Skein512_40
  | "skein512-48" -> Some `Skein512_48
  | "skein512-56" -> Some `Skein512_56
  | "skein512-64" -> Some `Skein512_64
  | "skein512-72" -> Some `Skein512_72
  | "skein512-80" -> Some `Skein512_80
  | "skein512-88" -> Some `Skein512_88
  | "skein512-96" -> Some `Skein512_96
  | "skein512-104" -> Some `Skein512_104
  | "skein512-112" -> Some `Skein512_112
  | "skein512-120" -> Some `Skein512_120
  | "skein512-128" -> Some `Skein512_128
  | "skein512-136" -> Some `Skein512_136
  | "skein512-144" -> Some `Skein512_144
  | "skein512-152" -> Some `Skein512_152
  | "skein512-160" -> Some `Skein512_160
  | "skein512-168" -> Some `Skein512_168
  | "skein512-176" -> Some `Skein512_176
  | "skein512-184" -> Some `Skein512_184
  | "skein512-192" -> Some `Skein512_192
  | "skein512-200" -> Some `Skein512_200
  | "skein512-208" -> Some `Skein512_208
  | "skein512-216" -> Some `Skein512_216
  | "skein512-224" -> Some `Skein512_224
  | "skein512-232" -> Some `Skein512_232
  | "skein512-240" -> Some `Skein512_240
  | "skein512-248" -> Some `Skein512_248
  | "skein512-256" -> Some `Skein512_256
  | "skein512-264" -> Some `Skein512_264
  | "skein512-272" -> Some `Skein512_272
  | "skein512-280" -> Some `Skein512_280
  | "skein512-288" -> Some `Skein512_288
  | "skein512-296" -> Some `Skein512_296
  | "skein512-304" -> Some `Skein512_304
  | "skein512-312" -> Some `Skein512_312
  | "skein512-320" -> Some `Skein512_320
  | "skein512-328" -> Some `Skein512_328
  | "skein512-336" -> Some `Skein512_336
  | "skein512-344" -> Some `Skein512_344
  | "skein512-352" -> Some `Skein512_352
  | "skein512-360" -> Some `Skein512_360
  | "skein512-368" -> Some `Skein512_368
  | "skein512-376" -> Some `Skein512_376
  | "skein512-384" -> Some `Skein512_384
  | "skein512-392" -> Some `Skein512_392
  | "skein512-400" -> Some `Skein512_400
  | "skein512-408" -> Some `Skein512_408
  | "skein512-416" -> Some `Skein512_416
  | "skein512-424" -> Some `Skein512_424
  | "skein512-432" -> Some `Skein512_432
  | "skein512-440" -> Some `Skein512_440
  | "skein512-448" -> Some `Skein512_448
  | "skein512-456" -> Some `Skein512_456
  | "skein512-464" -> Some `Skein512_464
  | "skein512-472" -> Some `Skein512_472
  | "skein512-480" -> Some `Skein512_480
  | "skein512-488" -> Some `Skein512_488
  | "skein512-496" -> Some `Skein512_496
  | "skein512-504" -> Some `Skein512_504
  | "skein512-512" -> Some `Skein512_512
  | "skein1024-8" -> Some `Skein1024_8
  | "skein1024-16" -> Some `Skein1024_16
  | "skein1024-24" -> Some `Skein1024_24
  | "skein1024-32" -> Some `Skein1024_32
  | "skein1024-40" -> Some `Skein1024_40
  | "skein1024-48" -> Some `Skein1024_48
  | "skein1024-56" -> Some `Skein1024_56
  | "skein1024-64" -> Some `Skein1024_64
  | "skein1024-72" -> Some `Skein1024_72
  | "skein1024-80" -> Some `Skein1024_80
  | "skein1024-88" -> Some `Skein1024_88
  | "skein1024-96" -> Some `Skein1024_96
  | "skein1024-104" -> Some `Skein1024_104
  | "skein1024-112" -> Some `Skein1024_112
  | "skein1024-120" -> Some `Skein1024_120
  | "skein1024-128" -> Some `Skein1024_128
  | "skein1024-136" -> Some `Skein1024_136
  | "skein1024-144" -> Some `Skein1024_144
  | "skein1024-152" -> Some `Skein1024_152
  | "skein1024-160" -> Some `Skein1024_160
  | "skein1024-168" -> Some `Skein1024_168
  | "skein1024-176" -> Some `Skein1024_176
  | "skein1024-184" -> Some `Skein1024_184
  | "skein1024-192" -> Some `Skein1024_192
  | "skein1024-200" -> Some `Skein1024_200
  | "skein1024-208" -> Some `Skein1024_208
  | "skein1024-216" -> Some `Skein1024_216
  | "skein1024-224" -> Some `Skein1024_224
  | "skein1024-232" -> Some `Skein1024_232
  | "skein1024-240" -> Some `Skein1024_240
  | "skein1024-248" -> Some `Skein1024_248
  | "skein1024-256" -> Some `Skein1024_256
  | "skein1024-264" -> Some `Skein1024_264
  | "skein1024-272" -> Some `Skein1024_272
  | "skein1024-280" -> Some `Skein1024_280
  | "skein1024-288" -> Some `Skein1024_288
  | "skein1024-296" -> Some `Skein1024_296
  | "skein1024-304" -> Some `Skein1024_304
  | "skein1024-312" -> Some `Skein1024_312
  | "skein1024-320" -> Some `Skein1024_320
  | "skein1024-328" -> Some `Skein1024_328
  | "skein1024-336" -> Some `Skein1024_336
  | "skein1024-344" -> Some `Skein1024_344
  | "skein1024-352" -> Some `Skein1024_352
  | "skein1024-360" -> Some `Skein1024_360
  | "skein1024-368" -> Some `Skein1024_368
  | "skein1024-376" -> Some `Skein1024_376
  | "skein1024-384" -> Some `Skein1024_384
  | "skein1024-392" -> Some `Skein1024_392
  | "skein1024-400" -> Some `Skein1024_400
  | "skein1024-408" -> Some `Skein1024_408
  | "skein1024-416" -> Some `Skein1024_416
  | "skein1024-424" -> Some `Skein1024_424
  | "skein1024-432" -> Some `Skein1024_432
  | "skein1024-440" -> Some `Skein1024_440
  | "skein1024-448" -> Some `Skein1024_448
  | "skein1024-456" -> Some `Skein1024_456
  | "skein1024-464" -> Some `Skein1024_464
  | "skein1024-472" -> Some `Skein1024_472
  | "skein1024-480" -> Some `Skein1024_480
  | "skein1024-488" -> Some `Skein1024_488
  | "skein1024-496" -> Some `Skein1024_496
  | "skein1024-504" -> Some `Skein1024_504
  | "skein1024-512" -> Some `Skein1024_512
  | "skein1024-520" -> Some `Skein1024_520
  | "skein1024-528" -> Some `Skein1024_528
  | "skein1024-536" -> Some `Skein1024_536
  | "skein1024-544" -> Some `Skein1024_544
  | "skein1024-552" -> Some `Skein1024_552
  | "skein1024-560" -> Some `Skein1024_560
  | "skein1024-568" -> Some `Skein1024_568
  | "skein1024-576" -> Some `Skein1024_576
  | "skein1024-584" -> Some `Skein1024_584
  | "skein1024-592" -> Some `Skein1024_592
  | "skein1024-600" -> Some `Skein1024_600
  | "skein1024-608" -> Some `Skein1024_608
  | "skein1024-616" -> Some `Skein1024_616
  | "skein1024-624" -> Some `Skein1024_624
  | "skein1024-632" -> Some `Skein1024_632
  | "skein1024-640" -> Some `Skein1024_640
  | "skein1024-648" -> Some `Skein1024_648
  | "skein1024-656" -> Some `Skein1024_656
  | "skein1024-664" -> Some `Skein1024_664
  | "skein1024-672" -> Some `Skein1024_672
  | "skein1024-680" -> Some `Skein1024_680
  | "skein1024-688" -> Some `Skein1024_688
  | "skein1024-696" -> Some `Skein1024_696
  | "skein1024-704" -> Some `Skein1024_704
  | "skein1024-712" -> Some `Skein1024_712
  | "skein1024-720" -> Some `Skein1024_720
  | "skein1024-728" -> Some `Skein1024_728
  | "skein1024-736" -> Some `Skein1024_736
  | "skein1024-744" -> Some `Skein1024_744
  | "skein1024-752" -> Some `Skein1024_752
  | "skein1024-760" -> Some `Skein1024_760
  | "skein1024-768" -> Some `Skein1024_768
  | "skein1024-776" -> Some `Skein1024_776
  | "skein1024-784" -> Some `Skein1024_784
  | "skein1024-792" -> Some `Skein1024_792
  | "skein1024-800" -> Some `Skein1024_800
  | "skein1024-808" -> Some `Skein1024_808
  | "skein1024-816" -> Some `Skein1024_816
  | "skein1024-824" -> Some `Skein1024_824
  | "skein1024-832" -> Some `Skein1024_832
  | "skein1024-840" -> Some `Skein1024_840
  | "skein1024-848" -> Some `Skein1024_848
  | "skein1024-856" -> Some `Skein1024_856
  | "skein1024-864" -> Some `Skein1024_864
  | "skein1024-872" -> Some `Skein1024_872
  | "skein1024-880" -> Some `Skein1024_880
  | "skein1024-888" -> Some `Skein1024_888
  | "skein1024-896" -> Some `Skein1024_896
  | "skein1024-904" -> Some `Skein1024_904
  | "skein1024-912" -> Some `Skein1024_912
  | "skein1024-920" -> Some `Skein1024_920
  | "skein1024-928" -> Some `Skein1024_928
  | "skein1024-936" -> Some `Skein1024_936
  | "skein1024-944" -> Some `Skein1024_944
  | "skein1024-952" -> Some `Skein1024_952
  | "skein1024-960" -> Some `Skein1024_960
  | "skein1024-968" -> Some `Skein1024_968
  | "skein1024-976" -> Some `Skein1024_976
  | "skein1024-984" -> Some `Skein1024_984
  | "skein1024-992" -> Some `Skein1024_992
  | "skein1024-1000" -> Some `Skein1024_1000
  | "skein1024-1008" -> Some `Skein1024_1008
  | "skein1024-1016" -> Some `Skein1024_1016
  | "skein1024-1024" -> Some `Skein1024_1024
  | "poseidon-bls12_381-a2-fc1" -> Some `Poseidon_bls12_381_a2_fc1
  | "poseidon-bls12_381-a2-fc1-sc" -> Some `Poseidon_bls12_381_a2_fc1_sc
  | _ -> None

let namespace_of_string = function
  | "path" -> Some `Path
  | "streamid" -> Some `Streamid
  | "ipld-ns" -> Some `Ipld_ns
  | "ipfs-ns" -> Some `Ipfs_ns
  | "swarm-ns" -> Some `Swarm_ns
  | "ipns-ns" -> Some `Ipns_ns
  | "zeronet" -> Some `Zeronet
  | "skynet-ns" -> Some `Skynet_ns
  | "arweave-ns" -> Some `Arweave_ns
  | _ -> None

let serialization_of_string = function
  | "protobuf" -> Some `Protobuf
  | "cbor" -> Some `Cbor
  | "rlp" -> Some `Rlp
  | "bencode" -> Some `Bencode
  | "json" -> Some `Json
  | "messagepack" -> Some `Messagepack
  | "car-index-sorted" -> Some `Car_index_sorted
  | "car-multihash-index-sorted" -> Some `Car_multihash_index_sorted
  | _ -> None

let zeroxcert_of_string = function
  | "zeroxcert-imprint-256" -> Some `Zeroxcert_imprint_256
  | _ -> None

let of_string : string -> t option = function
  | "identity" -> Some `Identity
  | "cidv1" -> Some `Cidv1
  | "cidv2" -> Some `Cidv2
  | "cidv3" -> Some `Cidv3
  | "ip4" -> Some `Ip4
  | "tcp" -> Some `Tcp
  | "sha1" -> Some `Sha1
  | "sha2-256" -> Some `Sha2_256
  | "sha2-512" -> Some `Sha2_512
  | "sha3-512" -> Some `Sha3_512
  | "sha3-384" -> Some `Sha3_384
  | "sha3-256" -> Some `Sha3_256
  | "sha3-224" -> Some `Sha3_224
  | "shake-128" -> Some `Shake_128
  | "shake-256" -> Some `Shake_256
  | "keccak-224" -> Some `Keccak_224
  | "keccak-256" -> Some `Keccak_256
  | "keccak-384" -> Some `Keccak_384
  | "keccak-512" -> Some `Keccak_512
  | "blake3" -> Some `Blake3
  | "sha2-384" -> Some `Sha2_384
  | "dccp" -> Some `Dccp
  | "murmur3-128" -> Some `Murmur3_128
  | "murmur3-32" -> Some `Murmur3_32
  | "ip6" -> Some `Ip6
  | "ip6zone" -> Some `Ip6zone
  | "path" -> Some `Path
  | "multicodec" -> Some `Multicodec
  | "multihash" -> Some `Multihash
  | "multiaddr" -> Some `Multiaddr
  | "multibase" -> Some `Multibase
  | "dns" -> Some `Dns
  | "dns4" -> Some `Dns4
  | "dns6" -> Some `Dns6
  | "dnsaddr" -> Some `Dnsaddr
  | "protobuf" -> Some `Protobuf
  | "cbor" -> Some `Cbor
  | "raw" -> Some `Raw
  | "dbl-sha2-256" -> Some `Dbl_sha2_256
  | "rlp" -> Some `Rlp
  | "bencode" -> Some `Bencode
  | "dag-pb" -> Some `Dag_pb
  | "dag-cbor" -> Some `Dag_cbor
  | "libp2p-key" -> Some `Libp2p_key
  | "git-raw" -> Some `Git_raw
  | "torrent-info" -> Some `Torrent_info
  | "torrent-file" -> Some `Torrent_file
  | "leofcoin-block" -> Some `Leofcoin_block
  | "leofcoin-tx" -> Some `Leofcoin_tx
  | "leofcoin-pr" -> Some `Leofcoin_pr
  | "sctp" -> Some `Sctp
  | "dag-jose" -> Some `Dag_jose
  | "dag-cose" -> Some `Dag_cose
  | "eth-block" -> Some `Eth_block
  | "eth-block-list" -> Some `Eth_block_list
  | "eth-tx-trie" -> Some `Eth_tx_trie
  | "eth-tx" -> Some `Eth_tx
  | "eth-tx-receipt-trie" -> Some `Eth_tx_receipt_trie
  | "eth-tx-receipt" -> Some `Eth_tx_receipt
  | "eth-state-trie" -> Some `Eth_state_trie
  | "eth-account-snapshot" -> Some `Eth_account_snapshot
  | "eth-storage-trie" -> Some `Eth_storage_trie
  | "eth-receipt-log-trie" -> Some `Eth_receipt_log_trie
  | "eth-reciept-log" -> Some `Eth_reciept_log
  | "aes-128" -> Some `Aes_128
  | "aes-192" -> Some `Aes_192
  | "aes-256" -> Some `Aes_256
  | "chacha-128" -> Some `Chacha_128
  | "chacha-256" -> Some `Chacha_256
  | "bitcoin-block" -> Some `Bitcoin_block
  | "bitcoin-tx" -> Some `Bitcoin_tx
  | "bitcoin-witness-commitment" -> Some `Bitcoin_witness_commitment
  | "zcash-block" -> Some `Zcash_block
  | "zcash-tx" -> Some `Zcash_tx
  | "caip-50" -> Some `Caip_50
  | "streamid" -> Some `Streamid
  | "stellar-block" -> Some `Stellar_block
  | "stellar-tx" -> Some `Stellar_tx
  | "md4" -> Some `Md4
  | "md5" -> Some `Md5
  | "bmt" -> Some `Bmt
  | "decred-block" -> Some `Decred_block
  | "decred-tx" -> Some `Decred_tx
  | "ipld-ns" -> Some `Ipld_ns
  | "ipfs-ns" -> Some `Ipfs_ns
  | "swarm-ns" -> Some `Swarm_ns
  | "ipns-ns" -> Some `Ipns_ns
  | "zeronet" -> Some `Zeronet
  | "secp256k1-pub" -> Some `Secp256k1_pub
  | "bls12_381-g1-pub" -> Some `Bls12_381_g1_pub
  | "bls12_381-g2-pub" -> Some `Bls12_381_g2_pub
  | "x25519-pub" -> Some `X25519_pub
  | "ed25519-pub" -> Some `Ed25519_pub
  | "bls12_381-g1g2-pub" -> Some `Bls12_381_g1g2_pub
  | "dash-block" -> Some `Dash_block
  | "dash-tx" -> Some `Dash_tx
  | "swarm-manifest" -> Some `Swarm_manifest
  | "swarm-feed" -> Some `Swarm_feed
  | "udp" -> Some `Udp
  | "p2p-webrtc-star" -> Some `P2p_webrtc_star
  | "p2p-webrtc-direct" -> Some `P2p_webrtc_direct
  | "p2p-stardust" -> Some `P2p_stardust
  | "p2p-circuit" -> Some `P2p_circuit
  | "dag-json" -> Some `Dag_json
  | "udt" -> Some `Udt
  | "utp" -> Some `Utp
  | "unix" -> Some `Unix
  | "thread" -> Some `Thread
  | "p2p" -> Some `P2p
  | "https" -> Some `Https
  | "onion" -> Some `Onion
  | "onion3" -> Some `Onion3
  | "garlic64" -> Some `Garlic64
  | "garlic32" -> Some `Garlic32
  | "tls" -> Some `Tls
  | "noise" -> Some `Noise
  | "quic" -> Some `Quic
  | "ws" -> Some `Ws
  | "wss" -> Some `Wss
  | "p2p-websocket-star" -> Some `P2p_websocket_star
  | "http" -> Some `Http
  | "swhid-1-snp" -> Some `Swhid_1_snp
  | "json" -> Some `Json
  | "messagepack" -> Some `Messagepack
  | "libp2p-peer-record" -> Some `Libp2p_peer_record
  | "libp2p-relay-rsvp" -> Some `Libp2p_relay_rsvp
  | "car-index-sorted" -> Some `Car_index_sorted
  | "car-multihash-index-sorted" -> Some `Car_multihash_index_sorted
  | "sha2-256-trunc254-padded" -> Some `Sha2_256_trunc254_padded
  | "sha2-224" -> Some `Sha2_224
  | "sha2-512-224" -> Some `Sha2_512_224
  | "sha2-512-256" -> Some `Sha2_512_256
  | "ripemd-128" -> Some `Ripemd_128
  | "ripemd-160" -> Some `Ripemd_160
  | "ripemd-256" -> Some `Ripemd_256
  | "ripemd-320" -> Some `Ripemd_320
  | "x11" -> Some `X11
  | "p256-pub" -> Some `P256_pub
  | "p384-pub" -> Some `P384_pub
  | "p521-pub" -> Some `P521_pub
  | "ed448-pub" -> Some `Ed448_pub
  | "x448-pub" -> Some `X448_pub
  | "rsa-pub" -> Some `Rsa_pub
  | "ed25519-priv" -> Some `Ed25519_priv
  | "secp256k1-priv" -> Some `Secp256k1_priv
  | "x25519-priv" -> Some `X25519_priv
  | "kangarootwelve" -> Some `Kangarootwelve
  | "sm3-256" -> Some `Sm3_256
  | "blake2b-8" -> Some `Blake2b_8
  | "blake2b-16" -> Some `Blake2b_16
  | "blake2b-24" -> Some `Blake2b_24
  | "blake2b-32" -> Some `Blake2b_32
  | "blake2b-40" -> Some `Blake2b_40
  | "blake2b-48" -> Some `Blake2b_48
  | "blake2b-56" -> Some `Blake2b_56
  | "blake2b-64" -> Some `Blake2b_64
  | "blake2b-72" -> Some `Blake2b_72
  | "blake2b-80" -> Some `Blake2b_80
  | "blake2b-88" -> Some `Blake2b_88
  | "blake2b-96" -> Some `Blake2b_96
  | "blake2b-104" -> Some `Blake2b_104
  | "blake2b-112" -> Some `Blake2b_112
  | "blake2b-120" -> Some `Blake2b_120
  | "blake2b-128" -> Some `Blake2b_128
  | "blake2b-136" -> Some `Blake2b_136
  | "blake2b-144" -> Some `Blake2b_144
  | "blake2b-152" -> Some `Blake2b_152
  | "blake2b-160" -> Some `Blake2b_160
  | "blake2b-168" -> Some `Blake2b_168
  | "blake2b-176" -> Some `Blake2b_176
  | "blake2b-184" -> Some `Blake2b_184
  | "blake2b-192" -> Some `Blake2b_192
  | "blake2b-200" -> Some `Blake2b_200
  | "blake2b-208" -> Some `Blake2b_208
  | "blake2b-216" -> Some `Blake2b_216
  | "blake2b-224" -> Some `Blake2b_224
  | "blake2b-232" -> Some `Blake2b_232
  | "blake2b-240" -> Some `Blake2b_240
  | "blake2b-248" -> Some `Blake2b_248
  | "blake2b-256" -> Some `Blake2b_256
  | "blake2b-264" -> Some `Blake2b_264
  | "blake2b-272" -> Some `Blake2b_272
  | "blake2b-280" -> Some `Blake2b_280
  | "blake2b-288" -> Some `Blake2b_288
  | "blake2b-296" -> Some `Blake2b_296
  | "blake2b-304" -> Some `Blake2b_304
  | "blake2b-312" -> Some `Blake2b_312
  | "blake2b-320" -> Some `Blake2b_320
  | "blake2b-328" -> Some `Blake2b_328
  | "blake2b-336" -> Some `Blake2b_336
  | "blake2b-344" -> Some `Blake2b_344
  | "blake2b-352" -> Some `Blake2b_352
  | "blake2b-360" -> Some `Blake2b_360
  | "blake2b-368" -> Some `Blake2b_368
  | "blake2b-376" -> Some `Blake2b_376
  | "blake2b-384" -> Some `Blake2b_384
  | "blake2b-392" -> Some `Blake2b_392
  | "blake2b-400" -> Some `Blake2b_400
  | "blake2b-408" -> Some `Blake2b_408
  | "blake2b-416" -> Some `Blake2b_416
  | "blake2b-424" -> Some `Blake2b_424
  | "blake2b-432" -> Some `Blake2b_432
  | "blake2b-440" -> Some `Blake2b_440
  | "blake2b-448" -> Some `Blake2b_448
  | "blake2b-456" -> Some `Blake2b_456
  | "blake2b-464" -> Some `Blake2b_464
  | "blake2b-472" -> Some `Blake2b_472
  | "blake2b-480" -> Some `Blake2b_480
  | "blake2b-488" -> Some `Blake2b_488
  | "blake2b-496" -> Some `Blake2b_496
  | "blake2b-504" -> Some `Blake2b_504
  | "blake2b-512" -> Some `Blake2b_512
  | "blake2s-8" -> Some `Blake2s_8
  | "blake2s-16" -> Some `Blake2s_16
  | "blake2s-24" -> Some `Blake2s_24
  | "blake2s-32" -> Some `Blake2s_32
  | "blake2s-40" -> Some `Blake2s_40
  | "blake2s-48" -> Some `Blake2s_48
  | "blake2s-56" -> Some `Blake2s_56
  | "blake2s-64" -> Some `Blake2s_64
  | "blake2s-72" -> Some `Blake2s_72
  | "blake2s-80" -> Some `Blake2s_80
  | "blake2s-88" -> Some `Blake2s_88
  | "blake2s-96" -> Some `Blake2s_96
  | "blake2s-104" -> Some `Blake2s_104
  | "blake2s-112" -> Some `Blake2s_112
  | "blake2s-120" -> Some `Blake2s_120
  | "blake2s-128" -> Some `Blake2s_128
  | "blake2s-136" -> Some `Blake2s_136
  | "blake2s-144" -> Some `Blake2s_144
  | "blake2s-152" -> Some `Blake2s_152
  | "blake2s-160" -> Some `Blake2s_160
  | "blake2s-168" -> Some `Blake2s_168
  | "blake2s-176" -> Some `Blake2s_176
  | "blake2s-184" -> Some `Blake2s_184
  | "blake2s-192" -> Some `Blake2s_192
  | "blake2s-200" -> Some `Blake2s_200
  | "blake2s-208" -> Some `Blake2s_208
  | "blake2s-216" -> Some `Blake2s_216
  | "blake2s-224" -> Some `Blake2s_224
  | "blake2s-232" -> Some `Blake2s_232
  | "blake2s-240" -> Some `Blake2s_240
  | "blake2s-248" -> Some `Blake2s_248
  | "blake2s-256" -> Some `Blake2s_256
  | "skein256-8" -> Some `Skein256_8
  | "skein256-16" -> Some `Skein256_16
  | "skein256-24" -> Some `Skein256_24
  | "skein256-32" -> Some `Skein256_32
  | "skein256-40" -> Some `Skein256_40
  | "skein256-48" -> Some `Skein256_48
  | "skein256-56" -> Some `Skein256_56
  | "skein256-64" -> Some `Skein256_64
  | "skein256-72" -> Some `Skein256_72
  | "skein256-80" -> Some `Skein256_80
  | "skein256-88" -> Some `Skein256_88
  | "skein256-96" -> Some `Skein256_96
  | "skein256-104" -> Some `Skein256_104
  | "skein256-112" -> Some `Skein256_112
  | "skein256-120" -> Some `Skein256_120
  | "skein256-128" -> Some `Skein256_128
  | "skein256-136" -> Some `Skein256_136
  | "skein256-144" -> Some `Skein256_144
  | "skein256-152" -> Some `Skein256_152
  | "skein256-160" -> Some `Skein256_160
  | "skein256-168" -> Some `Skein256_168
  | "skein256-176" -> Some `Skein256_176
  | "skein256-184" -> Some `Skein256_184
  | "skein256-192" -> Some `Skein256_192
  | "skein256-200" -> Some `Skein256_200
  | "skein256-208" -> Some `Skein256_208
  | "skein256-216" -> Some `Skein256_216
  | "skein256-224" -> Some `Skein256_224
  | "skein256-232" -> Some `Skein256_232
  | "skein256-240" -> Some `Skein256_240
  | "skein256-248" -> Some `Skein256_248
  | "skein256-256" -> Some `Skein256_256
  | "skein512-8" -> Some `Skein512_8
  | "skein512-16" -> Some `Skein512_16
  | "skein512-24" -> Some `Skein512_24
  | "skein512-32" -> Some `Skein512_32
  | "skein512-40" -> Some `Skein512_40
  | "skein512-48" -> Some `Skein512_48
  | "skein512-56" -> Some `Skein512_56
  | "skein512-64" -> Some `Skein512_64
  | "skein512-72" -> Some `Skein512_72
  | "skein512-80" -> Some `Skein512_80
  | "skein512-88" -> Some `Skein512_88
  | "skein512-96" -> Some `Skein512_96
  | "skein512-104" -> Some `Skein512_104
  | "skein512-112" -> Some `Skein512_112
  | "skein512-120" -> Some `Skein512_120
  | "skein512-128" -> Some `Skein512_128
  | "skein512-136" -> Some `Skein512_136
  | "skein512-144" -> Some `Skein512_144
  | "skein512-152" -> Some `Skein512_152
  | "skein512-160" -> Some `Skein512_160
  | "skein512-168" -> Some `Skein512_168
  | "skein512-176" -> Some `Skein512_176
  | "skein512-184" -> Some `Skein512_184
  | "skein512-192" -> Some `Skein512_192
  | "skein512-200" -> Some `Skein512_200
  | "skein512-208" -> Some `Skein512_208
  | "skein512-216" -> Some `Skein512_216
  | "skein512-224" -> Some `Skein512_224
  | "skein512-232" -> Some `Skein512_232
  | "skein512-240" -> Some `Skein512_240
  | "skein512-248" -> Some `Skein512_248
  | "skein512-256" -> Some `Skein512_256
  | "skein512-264" -> Some `Skein512_264
  | "skein512-272" -> Some `Skein512_272
  | "skein512-280" -> Some `Skein512_280
  | "skein512-288" -> Some `Skein512_288
  | "skein512-296" -> Some `Skein512_296
  | "skein512-304" -> Some `Skein512_304
  | "skein512-312" -> Some `Skein512_312
  | "skein512-320" -> Some `Skein512_320
  | "skein512-328" -> Some `Skein512_328
  | "skein512-336" -> Some `Skein512_336
  | "skein512-344" -> Some `Skein512_344
  | "skein512-352" -> Some `Skein512_352
  | "skein512-360" -> Some `Skein512_360
  | "skein512-368" -> Some `Skein512_368
  | "skein512-376" -> Some `Skein512_376
  | "skein512-384" -> Some `Skein512_384
  | "skein512-392" -> Some `Skein512_392
  | "skein512-400" -> Some `Skein512_400
  | "skein512-408" -> Some `Skein512_408
  | "skein512-416" -> Some `Skein512_416
  | "skein512-424" -> Some `Skein512_424
  | "skein512-432" -> Some `Skein512_432
  | "skein512-440" -> Some `Skein512_440
  | "skein512-448" -> Some `Skein512_448
  | "skein512-456" -> Some `Skein512_456
  | "skein512-464" -> Some `Skein512_464
  | "skein512-472" -> Some `Skein512_472
  | "skein512-480" -> Some `Skein512_480
  | "skein512-488" -> Some `Skein512_488
  | "skein512-496" -> Some `Skein512_496
  | "skein512-504" -> Some `Skein512_504
  | "skein512-512" -> Some `Skein512_512
  | "skein1024-8" -> Some `Skein1024_8
  | "skein1024-16" -> Some `Skein1024_16
  | "skein1024-24" -> Some `Skein1024_24
  | "skein1024-32" -> Some `Skein1024_32
  | "skein1024-40" -> Some `Skein1024_40
  | "skein1024-48" -> Some `Skein1024_48
  | "skein1024-56" -> Some `Skein1024_56
  | "skein1024-64" -> Some `Skein1024_64
  | "skein1024-72" -> Some `Skein1024_72
  | "skein1024-80" -> Some `Skein1024_80
  | "skein1024-88" -> Some `Skein1024_88
  | "skein1024-96" -> Some `Skein1024_96
  | "skein1024-104" -> Some `Skein1024_104
  | "skein1024-112" -> Some `Skein1024_112
  | "skein1024-120" -> Some `Skein1024_120
  | "skein1024-128" -> Some `Skein1024_128
  | "skein1024-136" -> Some `Skein1024_136
  | "skein1024-144" -> Some `Skein1024_144
  | "skein1024-152" -> Some `Skein1024_152
  | "skein1024-160" -> Some `Skein1024_160
  | "skein1024-168" -> Some `Skein1024_168
  | "skein1024-176" -> Some `Skein1024_176
  | "skein1024-184" -> Some `Skein1024_184
  | "skein1024-192" -> Some `Skein1024_192
  | "skein1024-200" -> Some `Skein1024_200
  | "skein1024-208" -> Some `Skein1024_208
  | "skein1024-216" -> Some `Skein1024_216
  | "skein1024-224" -> Some `Skein1024_224
  | "skein1024-232" -> Some `Skein1024_232
  | "skein1024-240" -> Some `Skein1024_240
  | "skein1024-248" -> Some `Skein1024_248
  | "skein1024-256" -> Some `Skein1024_256
  | "skein1024-264" -> Some `Skein1024_264
  | "skein1024-272" -> Some `Skein1024_272
  | "skein1024-280" -> Some `Skein1024_280
  | "skein1024-288" -> Some `Skein1024_288
  | "skein1024-296" -> Some `Skein1024_296
  | "skein1024-304" -> Some `Skein1024_304
  | "skein1024-312" -> Some `Skein1024_312
  | "skein1024-320" -> Some `Skein1024_320
  | "skein1024-328" -> Some `Skein1024_328
  | "skein1024-336" -> Some `Skein1024_336
  | "skein1024-344" -> Some `Skein1024_344
  | "skein1024-352" -> Some `Skein1024_352
  | "skein1024-360" -> Some `Skein1024_360
  | "skein1024-368" -> Some `Skein1024_368
  | "skein1024-376" -> Some `Skein1024_376
  | "skein1024-384" -> Some `Skein1024_384
  | "skein1024-392" -> Some `Skein1024_392
  | "skein1024-400" -> Some `Skein1024_400
  | "skein1024-408" -> Some `Skein1024_408
  | "skein1024-416" -> Some `Skein1024_416
  | "skein1024-424" -> Some `Skein1024_424
  | "skein1024-432" -> Some `Skein1024_432
  | "skein1024-440" -> Some `Skein1024_440
  | "skein1024-448" -> Some `Skein1024_448
  | "skein1024-456" -> Some `Skein1024_456
  | "skein1024-464" -> Some `Skein1024_464
  | "skein1024-472" -> Some `Skein1024_472
  | "skein1024-480" -> Some `Skein1024_480
  | "skein1024-488" -> Some `Skein1024_488
  | "skein1024-496" -> Some `Skein1024_496
  | "skein1024-504" -> Some `Skein1024_504
  | "skein1024-512" -> Some `Skein1024_512
  | "skein1024-520" -> Some `Skein1024_520
  | "skein1024-528" -> Some `Skein1024_528
  | "skein1024-536" -> Some `Skein1024_536
  | "skein1024-544" -> Some `Skein1024_544
  | "skein1024-552" -> Some `Skein1024_552
  | "skein1024-560" -> Some `Skein1024_560
  | "skein1024-568" -> Some `Skein1024_568
  | "skein1024-576" -> Some `Skein1024_576
  | "skein1024-584" -> Some `Skein1024_584
  | "skein1024-592" -> Some `Skein1024_592
  | "skein1024-600" -> Some `Skein1024_600
  | "skein1024-608" -> Some `Skein1024_608
  | "skein1024-616" -> Some `Skein1024_616
  | "skein1024-624" -> Some `Skein1024_624
  | "skein1024-632" -> Some `Skein1024_632
  | "skein1024-640" -> Some `Skein1024_640
  | "skein1024-648" -> Some `Skein1024_648
  | "skein1024-656" -> Some `Skein1024_656
  | "skein1024-664" -> Some `Skein1024_664
  | "skein1024-672" -> Some `Skein1024_672
  | "skein1024-680" -> Some `Skein1024_680
  | "skein1024-688" -> Some `Skein1024_688
  | "skein1024-696" -> Some `Skein1024_696
  | "skein1024-704" -> Some `Skein1024_704
  | "skein1024-712" -> Some `Skein1024_712
  | "skein1024-720" -> Some `Skein1024_720
  | "skein1024-728" -> Some `Skein1024_728
  | "skein1024-736" -> Some `Skein1024_736
  | "skein1024-744" -> Some `Skein1024_744
  | "skein1024-752" -> Some `Skein1024_752
  | "skein1024-760" -> Some `Skein1024_760
  | "skein1024-768" -> Some `Skein1024_768
  | "skein1024-776" -> Some `Skein1024_776
  | "skein1024-784" -> Some `Skein1024_784
  | "skein1024-792" -> Some `Skein1024_792
  | "skein1024-800" -> Some `Skein1024_800
  | "skein1024-808" -> Some `Skein1024_808
  | "skein1024-816" -> Some `Skein1024_816
  | "skein1024-824" -> Some `Skein1024_824
  | "skein1024-832" -> Some `Skein1024_832
  | "skein1024-840" -> Some `Skein1024_840
  | "skein1024-848" -> Some `Skein1024_848
  | "skein1024-856" -> Some `Skein1024_856
  | "skein1024-864" -> Some `Skein1024_864
  | "skein1024-872" -> Some `Skein1024_872
  | "skein1024-880" -> Some `Skein1024_880
  | "skein1024-888" -> Some `Skein1024_888
  | "skein1024-896" -> Some `Skein1024_896
  | "skein1024-904" -> Some `Skein1024_904
  | "skein1024-912" -> Some `Skein1024_912
  | "skein1024-920" -> Some `Skein1024_920
  | "skein1024-928" -> Some `Skein1024_928
  | "skein1024-936" -> Some `Skein1024_936
  | "skein1024-944" -> Some `Skein1024_944
  | "skein1024-952" -> Some `Skein1024_952
  | "skein1024-960" -> Some `Skein1024_960
  | "skein1024-968" -> Some `Skein1024_968
  | "skein1024-976" -> Some `Skein1024_976
  | "skein1024-984" -> Some `Skein1024_984
  | "skein1024-992" -> Some `Skein1024_992
  | "skein1024-1000" -> Some `Skein1024_1000
  | "skein1024-1008" -> Some `Skein1024_1008
  | "skein1024-1016" -> Some `Skein1024_1016
  | "skein1024-1024" -> Some `Skein1024_1024
  | "poseidon-bls12_381-a2-fc1" -> Some `Poseidon_bls12_381_a2_fc1
  | "poseidon-bls12_381-a2-fc1-sc" -> Some `Poseidon_bls12_381_a2_fc1_sc
  | "zeroxcert-imprint-256" -> Some `Zeroxcert_imprint_256
  | "fil-commitment-unsealed" -> Some `Fil_commitment_unsealed
  | "fil-commitment-sealed" -> Some `Fil_commitment_sealed
  | "plaintextv2" -> Some `Plaintextv2
  | "holochain-adr-v0" -> Some `Holochain_adr_v0
  | "holochain-adr-v1" -> Some `Holochain_adr_v1
  | "holochain-key-v0" -> Some `Holochain_key_v0
  | "holochain-key-v1" -> Some `Holochain_key_v1
  | "holochain-sig-v0" -> Some `Holochain_sig_v0
  | "holochain-sig-v1" -> Some `Holochain_sig_v1
  | "skynet-ns" -> Some `Skynet_ns
  | "arweave-ns" -> Some `Arweave_ns
  | _ -> None
