ocaml-multiformat
-----------------

*WIP & Unstable API*

A collection of libraries providing including: 

 - `multihash`: self-describing hash functions abstracted over the implementation. One implementation is provided for convenience using [digestif](https://github.com/mirage/digestif).

## Multihash

### Self-describing Hashes

The [multihash specification](https://w3c-ccg.github.io/multihash/index.xml) does a a good job explaining this, what follows is a brief summary. There are many different types of hash functions and there are many output sizes (even within the same type). Given a sequence of bytes it's hard to tell what exact hashing strategy was used. Self-describing hash functions are just normal hash functions plus a little bit of formatted metadata to recover the type of the hash function used and the length of the output.

This takes the `<type><length><value>` (TVL) format. In order for a multihash implementation to distinguish between the `type`, the `length` and the `value` both the `type` and the `length` use [*unsigned variable length integers*](https://golb.hplar.ch/2019/06/variable-length-int-java.html). This also reduces the amount of data needed to store these values (better for smaller numbers, worse for larger ones).

By storing this extra metadata alongside the hash, multihash offers a potentially better upgrade story in the case where a hash function needs replacing. You can [read more about multihash on their website](https://multiformats.io/multihash/).

### Examples with Multihash-digestif

This example is [taken from the appendix of the website](https://multiformats.io/multihash/#sha2-256-256-bits-aka-sha256).

```ocaml
# module Md = Multihash_digestif;;
module Md = Multihash_digestif
# let s = "Merkle–Damgård";;
val s : string = "Merkle–Damgård"
# let v = Md.v ~ident:`Sha2_256 s |> Result.get_ok;;
val v : Md.t = <abstr>
```

Having now digested the data, it can be converted to the full sequence of bytes.

```ocaml
# let data = Md.to_cstruct v ;;
val data : Cstruct.t = {Cstruct.buffer = <abstr>; off = 0; len = 34}
# let () = hexdump data;;
12 20 41 dd 7b 64 43 54  2e 75 70 1a a9 8a 0c 23
59 51 a2 8a 0d 85 1b 11  56 4d 20 02 2a b1 1d 25
89 a8
```

And of course the hash function used and the length are recoverable from the data.

```ocaml
# let v = Md.of_cstruct data |> Result.get_ok;;
val v : Md.t = <abstr>
# let (ident, length, digest) = 
  let ident = Multihash.Identifier.to_string (Md.get_ident v) in
  (ident, Md.get_length v, Md.get_digest v);;
val ident : string = "sha2-256"
val length : int = 32
val digest : Cstruct.t = {Cstruct.buffer = <abstr>; off = 2; len = 32}
# let () = hexdump digest;;
41 dd 7b 64 43 54 2e 75  70 1a a9 8a 0c 23 59 51
a2 8a 0d 85 1b 11 56 4d  20 02 2a b1 1d 25 89 a8
```

### Different Backends

The core of this library is functorised over the `Multihash.S.Hasher` module type. This is the module that digests the values and provides an interface for knowing what hash functions are supported. There are quite a few hashing libraries in OCaml like [digestif](https://github.com/mirage/digestif), [mirage-crypto](https://github.com/mirage/mirage-crypto) and [hacl-star](https://github.com/project-everest/hacl-star). Multihash should be able to work with any of them... 

## Multiaddr

Multiaddrs allow for the encoding of well-established network protocols.

```ocaml
# let addr = "/ip4/127.0.0.1/udp/1234";;
val addr : string = "/ip4/127.0.0.1/udp/1234"
# let t = Multiaddr.of_string addr |> get_ok;;
val t : Multiaddr.t = <abstr>
# let s = Multiaddr.to_string t;;
val s : string = "/ip4/127.0.0.1/udp/1234"
# let c = Multiaddr.to_cstruct t;;
val c : Cstruct.t = {Cstruct.buffer = <abstr>; off = 0; len = 9}
# Cstruct.hexdump c;;
04 7f 00 00 01 91 02 04  d2
- : unit = ()
```

It also supports encapsulating and decapsulating `Multiaddr.t`.

```ocaml
# let addr = Multiaddr.of_string_exn "/ip4/127.0.0.1/udp/1234";;
val addr : Multiaddr.t = <abstr>
# let addr = Multiaddr.(encapsulate addr @@ of_string_exn "/sctp/5678");;
val addr : Multiaddr.t = <abstr>
# Multiaddr.to_string addr;;
- : string = "/ip4/127.0.0.1/udp/1234/sctp/5678"
# let addr = Multiaddr.(decapsulate addr @@ of_string_exn "/udp/1234");;
val addr : Multiaddr.t option = Some <abstr>
# Multiaddr.to_string (Option.get addr);;
- : string = "/ip4/127.0.0.1"
```
