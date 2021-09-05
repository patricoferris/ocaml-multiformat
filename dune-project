(lang dune 2.9)

(name multihash)

(generate_opam_files true)

(source
 (github patricoferris/multihash))

(license ISC)

(authors "Patrick Ferris")

(maintainers "pf341@patricoferris.com")

(package
 (name multihash)
 (synopsis "Self-describing Hash Functions")
 (description "Built on <CRYPTO>, this library provides self-describing hash functions")
 (depends
  (alcotest :with-test)
  cstruct))

(package
 (name multihash-digestif)
 (synopsis "Self-describing Hash Functions using Digestif")
 (description "Built on <CRYPTO>, this library provides self-describing hash functions")
 (depends
  (alcotest :with-test)
  (multihash (= :version))
  digestif))
(using mdx 0.1)
