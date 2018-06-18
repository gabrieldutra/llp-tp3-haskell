intercalar :: [Int] -> [Int] -> [Int]
intercalar [] [] = []
intercalar (a:x) [] = [a] ++ intercalar x []
intercalar [] (b:y) = [b] ++ intercalar [] y
intercalar (a:x) (b:y) = [a] ++ [b] ++ intercalar x y