-- O(sqrt(n)) solution
isPrime' :: Int -> Int -> Bool
isPrime' _ 0 = False
isPrime' _ 1 = False
isPrime' m n
  | (m * m) > n      = True
  | (n `mod` m) == 0 = False 
  | otherwise        = isPrime' (m+1) n
  
isPrime :: Int -> Bool
isPrime n = isPrime' 2 n
