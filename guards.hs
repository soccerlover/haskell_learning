bmiTell :: (RealFloat a) => a -> String
bmiTell bmi
	| bmi <= 18.5 = "You're underweight, you emo, you!"
	| bmi <= 25.0 = "normal"
	| bmi <= 30.0 = "fat"
	| otherwise = "whale, congratulations"

newBmiTell :: (RealFloat a) => a -> a -> String
newBmiTell weight height
	| weight / height ^ 2 <= 18.5 = "underweight"
	| weight / height ^ 2 <= 25.0 = "normal"
	| weight / height ^ 2 <= 30.0 = "fat"
	| otherwise = "whale"

myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
	| a > b = GT
	| a == b = EQ
	| otherwise = LT

describeList :: [a] -> String
describeList xs = "This list is" ++ what xs
	where what [] = "empty."
	      what [x] = "a singleton list."
	      what xs = "a longer list"
--describeList :: [a] -> String  
--describeList xs = "The list is " ++ what xs  
--    where what [] = "empty."  
--          what [x] = "a singleton list."  
--          what xs = "a longer list." 
