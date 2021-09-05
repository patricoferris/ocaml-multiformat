#require "digestif.ocaml";;
#require "multihash-digestif";;

let hexdump v = Fmt.(pf stdout "%a%!" Cstruct.hexdump_pp v)
