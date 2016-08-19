pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x:xs) = pack' [x] xs
    where
        pack' y [] = [y]
        pack' (y:ys) (z:zs)
            | y == z    = pack' ((y:ys) ++ [z]) zs
            | otherwise = [y:ys] ++ (pack' [z] zs)