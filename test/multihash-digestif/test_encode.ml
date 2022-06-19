module M = Multihash_digestif

let multihash = Alcotest.testable M.pp M.equal
let msg ppf = function `Msg s -> Fmt.pf ppf "Error: %s" s

let err =
  let pp ppf = function
    | `Unsupported -> Fmt.pf ppf "Unsupported"
    | `Msg _ as m -> msg ppf m
  in
  Alcotest.of_pp pp

let list_to_cstruct xs =
  let open Cstruct in
  let buf = create (List.length xs) in
  List.iteri (set_uint8 buf) xs;
  buf

(* Borrowed from https://w3c-ccg.github.io/multihash/index.xml#appendix-c *)
let encodings =
  let test = "Merkle–Damgård" in
  ( test,
    [
      M.make ~ident:`Sha1 ~length:0x14
        ~digest:(Cstruct.of_hex "8a173fd3e32c0fa78b90fe42d305f202244e2739");
      M.make ~ident:`Sha2_256 ~length:0x20
        ~digest:
          (Cstruct.of_hex
             "41dd7b6443542e75701aa98a0c235951a28a0d851b11564d20022ab11d2589a8");
      M.make ~ident:`Sha2_512 ~length:0x40
        ~digest:
          (Cstruct.of_hex
             "52eb4dd19f1ec522859e12d89706156570f8fbab1824870bc6f8c7d235eef5f4c2cbbafd365f96fb12b1d98a0334870c2ce90355da25e6a1108a6e17c4aaebb0");
    ] )

let test_encode_and_decode v m () =
  let h = M.v ~ident:(M.get_ident m) v in
  Alcotest.(check (result multihash err)) "same encoding" (Ok m) h;
  let buff = M.to_cstruct (Result.get_ok h) in
  let h = M.of_cstruct buff in
  Alcotest.(check (result multihash (Alcotest.of_pp msg)))
    "same decoding" (Ok m) h

let tests =
  let v, encodings = encodings in
  let encoding =
    List.map
      (fun c ->
        ( Fmt.str "encoding_decoding_%s"
            (Multihash.Identifier.to_string (M.get_ident c)),
          `Quick,
          test_encode_and_decode v c ))
      encodings
  in
  encoding
