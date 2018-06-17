binario :: Int -> [Int]
binario 0 = [0]
binario 1 = [1]
binario x = binarioAux x []

binarioAux :: Int -> [Int] -> [Int]
binarioAux 0 l = reverter l
binarioAux x l
    | x `mod` 2 == 0 = binarioAux (x `div` 2) (l ++ [0])
    | otherwise = binarioAux (x `div` 2) (l ++ [1])

reverter:: [Int] -> [Int]
reverter [] = []
reverter (x:l) = reverter l ++ [x]
