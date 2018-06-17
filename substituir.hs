substituir :: Int -> Int -> [Int] -> [Int]
substituir n m [] = []
substituir n m (a:x)
    | a /= n = [a] ++ substituir n m x
    | a == n = [m] ++ substituir n m x
