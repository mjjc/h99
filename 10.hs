encode :: Eq a => [a] -> [(Int,a)]
encode = map (\x -> (length x,head x)) . pack