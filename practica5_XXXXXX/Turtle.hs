-- File:   Turtle.hs
-- Author: Javier González Blanco (815579), Diego Domingo Ralla (818637)
-- Date:   17 mayo 2022
-- Coms:   Tecnología de la Programación - Práctica 5
--         Módulo que incluye la función turtle

module Turtle where

-- Posicion en coordenadas (x,y)
type Position = (Float,Float)
-- Orientacion de la tortuga, se supone en grados
type Heading  = Float
-- Turtle = (paso,giro,posicion,orientacion)
type Turtle   = (Float,Float,Position,Heading)

data Move     = Forward | TurnLeft | TurnRight

-- Devuelve un nuevo estado de la tortuga,
-- según el movimiento deseado.
-- Los datos de paso y giro no cambian.
moveTurtle :: Turtle -> Move -> Turtle
moveTurtle (paso,giro,(x,y),orn) Forward = (paso,giro,(x+paso*c,y+paso*s),orn)
  where
    ornrad = (pi/180.0)*orn
    c = cos ornrad
    s = sin ornrad
moveTurtle (paso,giro,pos,orn) TurnLeft  = (paso,giro,pos,orn+giro)
moveTurtle (paso,giro,pos,orn) TurnRight = (paso,giro,pos,orn-giro)
