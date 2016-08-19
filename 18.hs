slice :: [a] -> Int -> Int -> [a]
slice [] _ _ = []
slice (x:xs) n k | k == 0    = []
				 | n == 1    = x:(slice xs 1 (k-1))
				 | otherwise = slice xs (n-1) (k-1)