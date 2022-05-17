-- File:   main.hs
-- Author: Javier González Blanco (815579), Diego Domingo Ralla (818637)
-- Date:   17 mayo 2022
-- Coms:   Tecnología de la Programación - Práctica 5
--         Programa principal

import SVG(savesvg)
import Tplot
import Lsystem

main = do
    savesvg "cuadrado" $ tplot (1, 90, (0,0), 0) ">+>+>+>"
    savesvg "triangulo" $ tplot (1, 120, (0,0), 0) ">+>+>"
    savesvg "circulo" $ tplot (1, 1, (0,0), 0) ">+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>"
    savesvg "curva koch" $ tplot (1, 60, (0,0), 0) $ lsystem rules "F" 3
    -- savesvg "curva koch cuadrada" $ tplot (1, 90, (0,0), 0) $ lsystem rules "F" 4
    -- savesvg "koch snowflake" $ tplot (1, 60, (0,0), 0) $ lsystem rules "F++F++F" 3
    -- savesvg "koch anti-snowflake" $ tplot (1, 60, (0,0), 0) $ lsystem rules "F++F++F" 4
    -- savesvg "isla minkowski" $ tplot (1, 90, (0,0), 0) $ lsystem rules "F+F+F+F" 2
    -- savesvg "triangulo sierpinski" $ tplot (1, 120, (0,0), 0) $ lsystem rules "F-G-G" 4
    -- savesvg "sierpinski arrowhead" $ tplot (1, 60, (0,0), 0) $ lsystem rules "F" 6
    -- savesvg "curva hilbert" $ tplot (1, 90, (0,0), 0) $ lsystem rules "f" 4
    -- savesvg "curva gosper" $ tplot (1, 60, (0,0), 0) $ lsystem rules "F" 3
