disjuntas :: [Int] -> [Int] -> Bool
disjuntas [] k = True
disjuntas (x:l) k
    | existe x k == True = False
    | otherwise = disjuntas l k

existe:: Int -> [Int] -> Bool
existe _ [] = False
existe x (y:ys)
    | x == y    = True
    | otherwise = existe x ys
