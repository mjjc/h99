combinations :: Int -> [a] -> [([a],[a])]
combinations 0 xs = [([],xs)]
combinations _ [] = error "too few arguments"
combinations n (x:xs) = a ++ b
  where
    a = [ (x:c,d) | (c,d) <- combinations (n-1) xs ]
    b = [ (c,x:d) | (c,d) <- combinations n xs ]

group :: [Int] -> [a] -> [[[a]]]
group [] _ = [[]]
group _ [] = error "too few arguments"
group (n:ns) elems = [ x:xs | (x,elems') <- combinations n elems, xs <- group ns elems']
