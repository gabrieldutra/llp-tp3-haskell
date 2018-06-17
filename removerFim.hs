primeirosElementos :: Int -> [Int] -> [Int]
primeirosElementos 0 x = []
primeirosElementos n (a:x) = [a] ++ primeirosElementos (n - 1) x 

removerFim :: Int -> [Int] -> [Int]
removerFim n x = primeirosElementos (length x - n) x