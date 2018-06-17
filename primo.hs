primo :: Int -> Bool
primo 0 = False
primo 1 = False
primo 2 = True
primo x = primoAux x 2

primoAux :: Int -> Int -> Bool
primoAux x divisor
    | x == divisor = True
    | x `mod` divisor == 0 = False
    | otherwise = primoAux x (divisor + 1)
