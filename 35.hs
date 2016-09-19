primeFactors' :: Int -> Int -> [Int]
primeFactors' m n
  | m > n = []
  | n `mod` m > 0 = primeFactors' (m + 1) n
  | otherwise = m : (primeFactors' m (n `div` m))
  
primeFactors :: Int -> [Int]
primeFactors n = primeFactors' 2 n
