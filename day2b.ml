let boxValue box = 
    let chars = Utils.stringToChars box in 
    let uniqChars = List.sort_uniq compare chars in 
    let charOccurences = List.map (fun u -> List.length (List.filter (fun a -> a == u) chars)) uniqChars in
    let pred number list = if (List.exists (fun c -> c == number) list) then 1 else 0 in
    (pred 2 charOccurences,  pred 3 charOccurences)
    
let retval = Utils.linesToList "input3.txt"
 |> List.map boxValue
 |> List.fold_left (fun (r1, r2) (t1, t2) ->  (r1+ t1, r2+ t2)) (0, 0)
 |> fun (r1, r2) -> r1 * r2
 |> print_int