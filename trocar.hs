somaListas :: [Int] -> [Int] -> [Int]
somaListas [] [] = []
somaListas (a:x) (b:y) = [a + b] ++ somaListas x y

trocar :: Int -> [Int]
trocar 0 = [0, 0, 0, 0, 0]
trocar 1 = [1, 0, 0, 0, 0]
trocar 5 = [0, 1, 0, 0, 0]
trocar 10 = [0, 0, 1, 0, 0]
trocar 50 = [0, 0, 0, 1, 0]
trocar 100 = [0, 0, 0, 0, 1]
trocar n
        | n > 100 = somaListas (trocar (n - 100)) (trocar 100)
        | n > 50 = somaListas (trocar (n - 50)) (trocar 50)
        | n > 10 = somaListas (trocar (n - 10)) (trocar 10)
        | n > 5 = somaListas (trocar (n - 5)) (trocar 5)
        | n > 1 = somaListas (trocar (n - 1)) (trocar 1)