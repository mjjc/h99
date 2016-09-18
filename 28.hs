import Data.List
import Data.Ord (comparing)

lsort :: [[a]] -> [[a]]
lsort xs = sortBy (comparing length) xs
