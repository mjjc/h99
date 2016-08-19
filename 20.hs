removeAt :: Int -> [a] -> (a, [a])
removeAt 1 (x:xs) = (x,xs)
removeAt n (x:xs) = (a,x:b)
    where (a,b) = removeAt (n-1) xs
