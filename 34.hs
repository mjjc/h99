coprime :: Int -> Int -> Bool
coprime a b = (gcd a b) == 1

totient :: Int -> Int
totient n = length $ filter (coprime n) [1..n]
