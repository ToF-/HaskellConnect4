module Grid (initial, cell, push, Color(..) ) where

data Color = Yellow | Red 
    deriving (Eq, Show)

type Grid = [Color]

initial :: Grid 
initial = []

cell :: Grid -> (Int,Int) -> Maybe Color
cell g (_,r) | r < length g = Just (g!!r)
             | otherwise    = Nothing

push :: Grid -> Int -> Color -> Grid
push g _ c = g ++ [c]
