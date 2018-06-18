primeirosElementos :: Int -> [Int] -> [Int]
primeirosElementos 0 x = []
primeirosElementos n (a:x) = [a] ++ primeirosElementos (n - 1) x 

removerPrimeiros :: Int -> [Int] -> [Int]
removerPrimeiros 0 x = x
removerPrimeiros n (a:x) = removerPrimeiros (n - 1) x

shift :: Int -> [Int] -> [Int]
shift n [] = []
shift 0 x = x
shift n x = (removerPrimeiros (length x - n - 1) x) ++ primeirosElementos n x