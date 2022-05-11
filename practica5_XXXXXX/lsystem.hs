module Lsystem where

--rules :: Char -> String
--rules 'F' = "G-F-G"
--rules 'G' = "F+G+F"
--rules _ = "-"

rules :: Char -> String
rules 'F' = "F-F++F-F"
rules '-' = "-"
rules '+' = "+"
rules _ = ""

aux :: String -> String -> String
aux (x:xs) y = aux xs ((rules x)++y)
aux [] y = y

lsystem :: (Char -> String) -> String -> Int -> String
lsystem f x 0 = x
lsystem f "" _ = ""
lsystem f (x:xs) n = lsystem f (aux (x:xs) []) (n -1)
-- Carlos lsystem f (x:xs) n = lsystem f (rules x) (n - 1) ++ lsystem f xs n

