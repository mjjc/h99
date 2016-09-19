gcd' :: Int -> Int -> Int
gcd' a b
  | a' < b' = gcd' a' (b' - a')
  | a' > b' = gcd' (a' - b') b'
  | otherwise = a'
  where a' = abs a
        b' = abs b
