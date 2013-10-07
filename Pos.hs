{-# LANGUAGE Safe #-}

module Pos (
  Pos
, mkPos
) where

newtype Pos = Pos Int deriving (Read, Show)

mkPos :: Int -> Maybe Pos
mkPos x | x > 0 = Just (Pos x)
        | otherwise = Nothing
