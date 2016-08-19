split :: [a] -> Int -> ([a],[a])
split xs 0 = ([],xs)
split (x:xs) n = (x:a,b)
    where (a,b) = split xs (n-1)