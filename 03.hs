elementAt :: [a] -> Int -> a
elementAt [] _ = error "Out of bounds"
elementAt _ 0 = error "Out of bounds"
elementAt (x:_) 1 = x
elementAt (_:xs) n = elementAt xs (n - 1)