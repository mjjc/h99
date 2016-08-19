dropEvery :: [a] -> Int -> [a]
dropEvery x n = dropEvery' x n n
    where
        dropEvery' [] _ _ = []
        dropEvery' (x:xs) n 1 = dropEvery' xs n n
        dropEvery' (x:xs) n m = x:(dropEvery' xs n (m-1))