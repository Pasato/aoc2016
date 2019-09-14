let linesToList fileName = 
    let ic = open_in fileName in
    let lines = ref [] in 
    try 
        while true do 
            let line = input_line ic in 
            lines := !lines @ [line];
        done;
        !lines
    with e ->
        close_in_noerr ic;  
        match e with 
        | End_of_file -> !lines
        | _ -> raise e

let stringToChars s = List.init (String.length s) (String.get s)