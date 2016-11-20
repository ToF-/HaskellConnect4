module Grid (initial, cell, push, Color(..) ) where

data Color = Yellow | Red 
    deriving (Eq, Show)

type Grid = Maybe Color

initial :: Grid 
initial = Nothing

cell :: Grid -> (Int,Int) -> Maybe Color
cell g _ = g

push :: Grid -> Int -> Color -> Grid
push _ _ c = Just c
