membro :: [Int] -> Int -> Bool
membro [] b = False
membro (a:x) b = (a == b) || membro x b

distintos :: [Int] -> Bool
distintos [] = True
distintos (a:x) = not (membro x a) && distintos x