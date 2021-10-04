#require "digestif.ocaml";;
#require "multiaddr";;
#require "multihash-digestif";;

let hexdump v = Fmt.(pf stdout "%a%!" Cstruct.hexdump_pp v)

let get_ok = function Ok v -> v | Error (`Msg m) -> failwith m