myReverse :: [t] -> [t]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]