(lang dune 2.9)

(name multihash)

(generate_opam_files true)

(source
 (github patricoferris/multiformat))

(license ISC)

(authors "Patrick Ferris")

(maintainers "pf341@patricoferris.com")

(package
 (name uvarint)
 (synopsis "Unsigned Variable Length Integers")
 (description "Unsigned variable length integers")
 (depends
  (alcotest :with-test)
  cstruct))

(package
 (name multicodec)
 (synopsis "Self-describing Hash Functions")
 (description "This library provides self-describing hash functions without any implementation")
 (depends))

(package
 (name multibase)
 (synopsis "Self-describing Base Encodings")
 (description "This library provides self-describing hash functions without any implementation")
 (depends
  base64))

(package
 (name multiaddr)
 (synopsis "Self-describing Hash Functions")
 (description "This library provides self-describing hash functions without any implementation")
 (depends
  (alcotest :with-test)
  (multicodec (= :version))
  ipaddr
  cstruct))

(package
 (name multihash)
 (synopsis "Self-describing Hash Functions")
 (description "This library provides self-describing hash functions without any implementation")
 (depends
  (alcotest :with-test)
  (mdx :with-test)
  (multicodec (= :version))
  cstruct))

(package
 (name multihash-digestif)
 (synopsis "Self-describing Hash Functions using Digestif")
 (description "This library provides self-describing hash functions using digestif for implementations")
 (depends
  (alcotest :with-test)
  (multihash (= :version))
  digestif))

(using mdx 0.1)
