{-# LANGUAGE Safe #-}
module Main where

import Pos

unsafePos :: Pos
unsafePos = read "Pos (-2)"

main = do
    putStrLn "Should print \"Pos (-2)\""
    print $ unsafePos
    putStrLn "If it printed Pos (-2), we've successfully violated the abstraction boundaries of module Pos"
