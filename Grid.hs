module Grid (initial, cell, push, Color(..) ) where

data Color = Yellow | Red 
    deriving (Eq, Show)

type Grid = [[Color]]

initial :: Grid 
initial = replicate 7 []

cell :: Grid -> (Int,Int) -> Maybe Color
cell g (c,r) | r < length (g!!c) = Just (g!!c!!r)
             | otherwise    = Nothing

push :: Grid -> Int -> Color -> Grid
push g c t = let (pre,(column:post)) = splitAt c g in pre ++ (column++[t]) : post
