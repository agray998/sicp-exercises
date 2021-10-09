-- Exercise 1.8: Define a procedure that implements Newton's
-- method for calculating cube roots.

absolute n | (<) n 0 = -n
           | otherwise = n

improve n i = (/) ((+) ((/) n ((^) i 2)) ((*) 2 i)) 3

newtonCubeRoot i n | (<) (absolute ((-) ((^) i 3) n)) 0.0001 = i
                   | otherwise = newtonCubeRoot (improve n i) n

main = do
    print $ newtonCubeRoot 3.0 64.0