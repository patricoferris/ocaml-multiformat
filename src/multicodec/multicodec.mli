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

val filecoin_to_code : filecoin -> int

val holochain_to_code : holochain -> int

val ipld_to_code : ipld -> int

val key_to_code : key -> int

val libp2p_to_code : libp2p -> int

val multiaddr_to_code : multiaddr -> int

val multiformat_to_code : multiformat -> int

val multihash_to_code : multihash -> int

val namespace_to_code : namespace -> int

val serialization_to_code : serialization -> int

val zeroxcert_to_code : zeroxcert -> int

val to_code : t -> int

val filecoin_of_code : int -> filecoin option

val holochain_of_code : int -> holochain option

val ipld_of_code : int -> ipld option

val key_of_code : int -> key option

val libp2p_of_code : int -> libp2p option

val multiaddr_of_code : int -> multiaddr option

val multiformat_of_code : int -> multiformat option

val multihash_of_code : int -> multihash option

val namespace_of_code : int -> namespace option

val serialization_of_code : int -> serialization option

val zeroxcert_of_code : int -> zeroxcert option

val of_code : int -> t option

val filecoin_to_string : filecoin -> string

val holochain_to_string : holochain -> string

val ipld_to_string : ipld -> string

val key_to_string : key -> string

val libp2p_to_string : libp2p -> string

val multiaddr_to_string : multiaddr -> string

val multiformat_to_string : multiformat -> string

val multihash_to_string : multihash -> string

val namespace_to_string : namespace -> string

val serialization_to_string : serialization -> string

val zeroxcert_to_string : zeroxcert -> string

val to_string : t -> string

val filecoin_of_string : string -> filecoin option

val holochain_of_string : string -> holochain option

val ipld_of_string : string -> ipld option

val key_of_string : string -> key option

val libp2p_of_string : string -> libp2p option

val multiaddr_of_string : string -> multiaddr option

val multiformat_of_string : string -> multiformat option

val multihash_of_string : string -> multihash option

val namespace_of_string : string -> namespace option

val serialization_of_string : string -> serialization option

val zeroxcert_of_string : string -> zeroxcert option

val of_string : string -> t option
