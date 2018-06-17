reversa :: [Int] -> [Int]
reversa [] = []
reversa (a:x) = reversa x ++ [a]

cabeca :: [Int] -> Int
cabeca (a:x) = a

removeUltimoElemento :: [Int] -> [Int]
removeUltimoElemento [] = []
removeUltimoElemento [a] = []
removeUltimoElemento (a:x) = [a] ++ removeUltimoElemento x

palindromo :: [Int] -> Bool
palindromo [] = True
palindromo [a] = True
palindromo (a:x) = (a == cabeca (reversa x)) && palindromo (removeUltimoElemento x)