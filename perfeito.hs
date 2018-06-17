divisores :: Int -> [Int]
divisores n = [m | m <- [1..((n `div` 2) + 1)],
                 n `mod` m == 0]

somatorio :: [Int] -> Int
somatorio [] = 0
somatorio (a:x) = a + somatorio x

perfeito :: Int -> Bool
perfeito x
    | somatorio (divisores x) == x = True
    | otherwise = False