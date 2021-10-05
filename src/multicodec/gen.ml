let read_file f =
  let ic = open_in f in
  let lines = ref [] in
  try
    while true do
      lines := input_line ic :: !lines
    done;
    List.rev !lines
  with End_of_file -> List.rev !lines

type t = {
  name : string;
  tag : string;
  code : string;
  status : string;
  description : string;
}

let from_file f =
  let from_line s =
    match String.split_on_char ',' s with
    | [ name; tag; code; status; description ] ->
        {
          name = String.trim name;
          tag = String.trim tag;
          code = String.trim code;
          status = String.trim status;
          description = String.trim description;
        }
    | _ -> failwith "Too many elements in row"
  in
  match read_file f with
  | _ :: data ->
      let rec aux acc = function
        | [] -> List.rev acc
        | x :: xs -> aux (from_line x :: acc) xs
      in
      aux [] data
  | _ -> failwith "Struggling to read CSV... help!"

let string_to_pv s =
  String.split_on_char '-' s |> String.concat "_" |> String.capitalize_ascii
  |> ( ^ ) "`"

let pp_type_pv ppf (t, ts) =
  Fmt.pf ppf "type %s = [ %a ]\n\n" t
    Fmt.(list ~sep:(fun ppf _ -> Fmt.pf ppf " | ") string)
    (List.map string_to_pv ts)

let pp_to_code typ ppf ncs =
  let f ppf (name, code) = Fmt.pf ppf "%s -> %s\n" (string_to_pv name) code in
  Fmt.pf ppf "let %s_to_code = function\n%a" typ
    Fmt.(list ~sep:(fun ppf _ -> pf ppf "\n| ") f)
    ncs

let pp_of_code typ ppf ncs =
  let f ppf (name, code) =
    Fmt.pf ppf "%s -> Some %s\n" code (string_to_pv name)
  in
  Fmt.pf ppf "let %s_of_code = function\n%a| _ -> None\n\n" typ
    Fmt.(list ~sep:(fun ppf _ -> pf ppf "\n| ") f)
    ncs

let pp_to_string typ ppf ncs =
  let f ppf (name, _) = Fmt.pf ppf "%s -> \"%s\"\n" (string_to_pv name) name in
  Fmt.pf ppf "let %s_to_string = function\n%a\n\n" typ
    Fmt.(list ~sep:(fun ppf _ -> pf ppf "\n| ") f)
    ncs

let pp_of_string typ ppf ncs =
  let f ppf (name, _) =
    Fmt.pf ppf "\"%s\" -> Some %s\n" name (string_to_pv name)
  in
  Fmt.pf ppf "let %s_of_string = function\n%a\n | _ -> None\n" typ
    Fmt.(list ~sep:(fun ppf _ -> pf ppf "\n| ") f)
    ncs

let () =
  let mli = Sys.argv.(1) = "mli" in
  let data =
    from_file "vendor/multicodec/table.csv"
    |> List.filter (fun { name; _ } -> name <> "ipfs")
  in
  let names = List.map (fun v -> (v.name, v.tag, v.code)) data in
  let tags = List.sort_uniq String.compare (List.map (fun v -> v.tag) data) in
  List.iter
    (fun t ->
      Fmt.pr "%a%!" pp_type_pv
        ( t,
          List.filter_map
            (fun (s, t', _) -> if t = t' then Some s else None)
            names ))
    tags;
  Fmt.pr "type t = [ %a ]\n\n%!"
    Fmt.(list ~sep:(fun ppf _ -> Fmt.pf ppf " | ") string)
    tags;
  if mli then
    Fmt.pr "%a\n\n"
      Fmt.(list (fun ppf t -> pf ppf "val %s_to_code : %s -> int\n\n" t t))
      tags
  else
    List.iter
      (fun t ->
        Fmt.pr "%a%!" (pp_to_code t)
          (List.filter_map
             (fun (s, t', c) -> if t = t' then Some (s, c) else None)
             names))
      tags;
  if mli then Fmt.pr "val to_code : t -> int\n\n"
  else
    Fmt.pr "\nlet to_code : t -> int = function\n%a%!\n\n"
      Fmt.(list (fun ppf v -> pf ppf "| #%s as x -> %s_to_code x" v v))
      tags;
  if mli then
    Fmt.pr "%a\n\n"
      Fmt.(
        list (fun ppf t -> pf ppf "val %s_of_code : int -> %s option\n\n" t t))
      tags
  else
    List.iter
      (fun t ->
        Fmt.pr "%a%!" (pp_of_code t)
          (List.filter_map
             (fun (s, t', c) -> if t = t' then Some (s, c) else None)
             names))
      tags;
  if mli then Fmt.pr "val of_code : int -> t option"
  else
    Fmt.pr "\n\nlet of_code : int -> t option = function\n%a\n| _ -> None%!\n\n"
      Fmt.(
        list (fun ppf (n, _, c) -> pf ppf "| %s -> Some %s" c (string_to_pv n)))
      names;
  (* String functions *)
  if mli then
    Fmt.pr "\n%a\n\n"
      Fmt.(
        list (fun ppf t -> pf ppf "val %s_to_string : %s -> string \n\n" t t))
      tags
  else
    List.iter
      (fun t ->
        Fmt.pr "%a%!" (pp_to_string t)
          (List.filter_map
             (fun (s, t', c) -> if t = t' then Some (s, c) else None)
             names))
      tags;
  if mli then Fmt.pr "val to_string : t -> string"
  else
    Fmt.pr "\n\nlet to_string : t -> string = function\n%a\n\n"
      Fmt.(
        list (fun ppf (n, _, _) -> pf ppf "| %s -> \"%s\"\n" (string_to_pv n) n))
      names;
  if mli then
    Fmt.pr "\n%a\n\n"
      Fmt.(
        list (fun ppf t ->
            pf ppf "val %s_of_string : string -> %s option \n\n" t t))
      tags
  else
    List.iter
      (fun t ->
        Fmt.pr "%a%!" (pp_of_string t)
          (List.filter_map
             (fun (s, t', c) -> if t = t' then Some (s, c) else None)
             names))
      tags;
  if mli then Fmt.pr "val of_string : string -> t option"
  else
    Fmt.pr
      "\n\nlet of_string : string -> t option = function\n%a\n | _ -> None\n"
      Fmt.(
        list (fun ppf (n, _, _) ->
            pf ppf "| \"%s\" -> Some %s\n" n (string_to_pv n)))
      names
