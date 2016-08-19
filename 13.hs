data Enc a = Single a | Multiple Int a deriving (Show)
encodeDirect :: Eq a => [a] -> [Enc a]
encodeDirect [] = []
encodeDirect (x:xs) = encodeDirect' (Single x) xs
    where
        encodeDirect' x [] = [x]
        encodeDirect' (Single x) (y:ys)
            | x == y    = encodeDirect' (Multiple 2 x) ys
        encodeDirect' (Multiple n x) (y:ys)
            | x == y    = encodeDirect' (Multiple (n+1) x) ys
        encodeDirect' x (y:ys) = x:(encodeDirect' (Single y) ys)