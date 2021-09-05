(*
 * Copyright (c) 2021 Patrick Ferris <pf341@patricoferris.com>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *)

module M = Multihash_digestif

let multihash = Alcotest.testable M.pp M.equal

let err =
  let pp ppf = function
    | `Unsupported -> Fmt.pf ppf "Unsupported"
    | `Msg s -> Fmt.pf ppf "Error: %s" s
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
      {
        M.ident = `Sha1;
        length = 0x14;
        digest = Cstruct.of_hex "8a173fd3e32c0fa78b90fe42d305f202244e2739";
      };
      {
        M.ident = `Sha2_256;
        length = 0x20;
        digest =
          Cstruct.of_hex
            "41dd7b6443542e75701aa98a0c235951a28a0d851b11564d20022ab11d2589a8";
      };
      {
        M.ident = `Sha2_512;
        length = 0x40;
        digest =
          Cstruct.of_hex
            "52eb4dd19f1ec522859e12d89706156570f8fbab1824870bc6f8c7d235eef5f4c2cbbafd365f96fb12b1d98a0334870c2ce90355da25e6a1108a6e17c4aaebb0";
      };
    ] )

let test_encode v m () =
  let h = M.digest ~ident:m.M.ident v in
  Alcotest.(check (result multihash err)) "same encoding" (Ok m) h

let tests =
  let v, encodings = encodings in
  let encoding =
    List.map (fun c -> (Fmt.str "encoding_%s" (Multihash.Identifier.to_string c.M.ident), `Quick, test_encode v c)) encodings
  in
  encoding
