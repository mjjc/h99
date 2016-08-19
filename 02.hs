myButLast :: [t] -> t
myButLast [] = error "Empty list has no last but one element"
myButLast [_] = error "Singleton list has no last but one element"
myButLast [x,_] = x
myButLast (_:xs) = myButLast xs