-- Exercise 1.8: Define a procedure that implements Newton's
-- method for calculating cube roots.

absolute n | (<) n 0 = -n
           | otherwise = n

improve n i = (/) ((+) ((/) n ((^) i 2)) ((*) 2 i)) 3

newtonCubeRootIter i n | (<) (absolute ((-) ((^) i 3) n)) 0.0001 = i
                       | otherwise = newtonCubeRootIter (improve n i) n

newtonCubeRoot = newtonCubeRootIter 1.0

main = do
    print $ newtonCubeRoot 64.0