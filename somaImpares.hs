somaImpares :: [Int] -> Int
somaImpares l = somaImparesAux l 0

somaImparesAux :: [Int] -> Int -> Int
somaImparesAux [] soma = soma
somaImparesAux (x:l) soma
    | x `mod` 2 == 0 = somaImparesAux l soma
    | otherwise = somaImparesAux l (soma + x)
