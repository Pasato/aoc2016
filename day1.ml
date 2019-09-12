let lines = Utils.linesToList "day1_input.txt" in
let ints = List.map int_of_string lines in
let folded = List.fold_left (+) 0 ints in 
print_int folded;
flush stdout;; 