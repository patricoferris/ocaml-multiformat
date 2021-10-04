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

let cstruct = Alcotest.testable Cstruct.hexdump_pp Cstruct.equal

let multiaddr = Alcotest.testable Multiaddr.pp_human Multiaddr.equal

let get_ok = function Ok v -> v | Error (`Msg m) -> failwith m

let list_to_cstruct xs =
  let open Cstruct in
  let buf = create (List.length xs) in
  List.iteri (set_uint8 buf) xs;
  buf

(* Borrowed from https://w3c-ccg.github.io/multihash/index.xml#rfc.section.2.1.1 *)
let encodings =
  [
    ( "/ip4/127.0.0.1/udp/1234",
      list_to_cstruct [ 0x04; 0x7f; 0x00; 0x00; 0x01; 0x91; 0x02; 0x04; 0xd2 ]
    );
    ( "/ip4/127.0.0.1/tcp/4321",
      list_to_cstruct [ 0x04; 0x7f; 0x00; 0x00; 0x01; 0x06; 0x10; 0xe1 ] );
    ( "/ip4/127.0.0.1/udp/1234/ip4/127.0.0.1/tcp/4321",
      list_to_cstruct
        [
          0x04;
          0x7f;
          0x00;
          0x00;
          0x01;
          0x91;
          0x02;
          0x04;
          0xd2;
          0x04;
          0x7f;
          0x00;
          0x00;
          0x01;
          0x06;
          0x10;
          0xe1;
        ] );
  ]

let test_encode addr expect () =
  let v = Multiaddr.of_string_exn addr in
  Alcotest.(check string) "same address" addr (Multiaddr.to_string v);
  let encoding = Multiaddr.to_cstruct v in
  Alcotest.(check cstruct) "same cstruct" expect encoding

let test_encode_decode addr () =
  let v = Multiaddr.of_string_exn addr in
  let buff = Multiaddr.to_cstruct v in
  let v' = Multiaddr.of_cstruct ~is_transcoded:true buff |> get_ok in
  Alcotest.(check multiaddr) "same addr" v v'

let tests =
  let f (addr, buff) = (addr, `Quick, test_encode addr buff) in
  List.map f encodings

let encode_decode =
  List.map (fun (addr, _) -> (addr, `Quick, test_encode_decode addr)) encodings

let () =
  Alcotest.run "multiaddr"
    [ ("encode", tests); ("encode_decode", encode_decode) ]
