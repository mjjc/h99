data Enc a = Single a | Multiple Int a deriving (Show)
encodeModified :: Eq a => [a] -> [Enc a]
encodeModified = map encodeModified' . encode
    where
        encodeModified' (1,x) = Single x
        encodeModified' (n,x) = Multiple n x