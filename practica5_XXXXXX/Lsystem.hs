-- File:   Lsystem.hs
-- Author: Javier González Blanco (815579), Diego Domingo Ralla (818637)
-- Date:   17 mayo 2022
-- Coms:   Tecnología de la Programación - Práctica 5
--         Módulo que incluye la función lsystem

module Lsystem where

-- Curva de Koch
rules :: Char -> String
rules 'F' = "F+F--F+F"
rules '+' = "+"
rules '-' = "-"
rules _ = ""

-- Curva de Koch cuadrada
-- rules :: Char -> String
-- rules 'F' = "F+F-F-F+F
-- rules '+' = "+"
-- rules '-' = "-"
-- rules _ = ""

-- Koch Snowflake
-- rules :: Char -> String
-- rules 'F' = "F-F++F-F"
-- rules '+' = "+"
-- rules '-' = "-"
-- rules _ = ""

-- Koch Anti-Snowflake
-- rules :: Char -> String
-- rules 'F' = "F+F--F+F"
-- rules '+' = "+"
-- rules '-' = "-"
-- rules _ = ""

-- Isla de Minkowski
-- rules :: Char -> String
-- rules 'F' = "F+F-F-FF+F+F-F"
-- rules '+' = "+"
-- rules '-' = "-"
-- rules _ = ""

-- Triángulo de Sierpinski
-- rules :: Char -> String
-- rules 'F' = "F-G+F+G-F"
-- rules 'G' = "GG"
-- rules '+' = "+"
-- rules '-' = "-"
-- rules _ = ""

-- Sierpinski Arrowhead
-- rules :: Char -> String
-- rules 'F' = "G-F-G"
-- rules 'G' = "F+G+F"
-- rules '+' = "+"
-- rules '-' = "-"
-- rules _ = ""

-- Curva de Hilbert
-- rules :: Char -> String
-- rules 'f' = "-g>+f>f+>g-"
-- rules 'g' = "+f>-g>g->f+"
-- rules '>' = ">"
-- rules '+' = "+"
-- rules '-' = "-"
-- rules _ = ""

-- Curva de Gosper
-- rules :: Char -> String
-- rules 'F' = "F-G--G+F++FF+G-"
-- rules 'G' = "+F-GG--G-F++F+G"
-- rules '+' = "+"
-- rules '-' = "-"
-- rules _ = ""

aux :: String -> String -> String
aux (x:xs) y = aux xs ((rules x) ++ y)
aux [] y = y

lsystem :: (Char -> String) -> String -> Int -> String
lsystem f x 0 = x
lsystem f "" _ = ""
lsystem f (x:xs) n = lsystem f (aux (x:xs) []) (n -1)
