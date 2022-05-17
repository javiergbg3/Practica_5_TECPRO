-- File:   Tplot.hs
-- Author: Javier González Blanco (815579), Diego Domingo Ralla (818637)
-- Date:   17 mayo 2022
-- Coms:   Tecnología de la Programación - Práctica 5
--         Módulo que incluye la función tplot

module Tplot where

import Turtle

pos :: Turtle -> [Position]
pos (x, y, p, z) = [p]

tplot :: Turtle -> String -> [Position]
tplot t [] = pos t ++ []
tplot t (m:ms) = case m of
               '>' -> pos t ++ tplot (moveTurtle t Forward) ms
               '+' -> tplot (moveTurtle t TurnRight) ms
               '-' -> tplot (moveTurtle t TurnLeft) ms
               'F' -> pos t ++ tplot (moveTurtle t Forward) ms
               'G' -> pos t ++ tplot (moveTurtle t Forward) ms
               _   -> tplot t ms
