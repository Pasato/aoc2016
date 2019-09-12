let findFirstDup curFreq encountered list =
    let rec innerFind curFreq list2 encountered = 
        match list2 with 
        | h :: t ->  if (List.exists (fun el -> el == curFreq + h) encountered)
                then curFreq + h
                else innerFind (curFreq + h) t ((curFreq + h) :: encountered)
        | [] -> innerFind curFreq list encountered
    in
    innerFind curFreq list encountered;;

let input = Utils.linesToList "day2_input.txt" |> List.map int_of_string in
findFirstDup 0 [0] input |> print_int


