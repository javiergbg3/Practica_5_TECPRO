module Tplot where

import Turtle

pos :: Turtle -> [Position]
pos (x,y,p,z) = [p]
--Funcion
tplot :: Turtle -> String -> [Position]
tplot t [] = pos t ++ []
tplot t (m:ms) = case m of 
                    '>' -> pos t ++ tplot (moveTurtle t Forward) ms
                    '+' -> tplot (moveTurtle t TurnRight) ms
                    '-' -> tplot (moveTurtle t TurnLeft) ms
                    'F' -> pos t ++ tplot (moveTurtle t Forward) ms
                    'G' -> pos t ++ tplot (moveTurtle t Forward) ms
