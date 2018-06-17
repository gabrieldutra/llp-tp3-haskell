somaParciais :: [Int] -> [Int]
-- somaParciaisAux recebe a lista, a lista de somas e a soma total
somaParciais l = somaParciaisAux l [] 0

somaParciaisAux :: [Int] -> [Int] -> Int -> [Int]
somaParciaisAux [] k _ = k
somaParciaisAux (x:l) k soma = somaParciaisAux l (k ++ [(soma + x)]) (soma + x)
