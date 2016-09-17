range :: Int -> Int -> [Int]
range a b
  | a < b = a : (range (a+1) b)
  | a > b = a : (range (a-1) b)
  | otherwise = [a]
