let linesToList fileName = 
    let ic = open_in fileName in
    let lines = ref [] in 
    try 
        while true do 
            let line = input_line ic in 
            lines := !lines @ [line];
        done;
        lines
    with e ->
        close_in_noerr ic;  
        match e with 
        | End_of_file -> lines
        | _ -> raise e
    ;;

let lines = linesToList "day1_input.txt" in
let ints = List.map int_of_string !lines in
let folded = List.fold_left (+) 0 ints in 
print_int folded;
flush stdout;; 


