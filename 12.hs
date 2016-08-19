data Enc a = Single a | Multiple Int a deriving (Show)
decodeModified :: [Enc a] -> [a]
decodeModified [] = []
decodeModified (x:xs) = unpack x ++ decodeModified xs
    where
        unpack (Single x) = [x]
        unpack (Multiple 1 x) = [x]
        unpack (Multiple n x) = x:(unpack (Multiple (n-1) x))