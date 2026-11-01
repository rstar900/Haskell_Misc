-- From part 1.10 (All Together Now!)

module Collatz where

-- Function to get whether to step up (3x+1) or down (x/2)
step :: Integer -> Integer
step n = if even n then down else up
    where 
        down = div n 2
        up = 3 * n + 1

-- Function to calculate the total steps of a Collatz sequence for n to reach 1
collatz :: Integer -> Integer
collatz 1 = 0 -- Base Case
collatz n = 1 + collatz (step n)

-- Function to get the number with largest Collatz sequence between 0 and an upper bound
longest :: Integer -> Integer
longest upperBound = longest' 0 0 upperBound -- Use the helper function longest' (pronounced longest prime)

-- Helper function to find out the longest Collatz sequence between given lower bound (number) and upper bound (n)
longest' :: Integer -> Integer -> Integer -> Integer
longest' number _ 0 = number -- Base case
longest' number maxLength n =
    if len > maxLength then
        longest' n len (n-1)
    else 
        longest' number maxLength (n-1)
    where len = collatz n
