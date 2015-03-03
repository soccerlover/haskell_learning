multThree :: (Num a) => a -> a -> a -> a
multThree x y z = x * y * z

multTwoWithNine = multThree 9

compareWithHundred :: (Num a, Ord a) => a -> Ordering
compareWithHundred = compare 100

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

mapK :: (a -> b) -> [a] -> [b]
mapK _ [] = []
mapK f (x:xs) = f x : mapK f xs
