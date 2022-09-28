(* read a cudf document and dump the list of package names *)
let infile=Sys.argv.(1)
let parser = Cudf_parser.from_file infile
let (preamble,universe,request)=Cudf_parser.load parser
let _ = Cudf.iter_packages
          (function p ->
             Printf.printf "%s\n" p.package)
          universe
          
