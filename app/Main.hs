module Main (main) where

import Utils.Timer (withTimer)

main :: IO ()
main = withTimer $ do
  putStrLn "LeetCode 30 Days Challenge - Haskell"
  putStrLn "Ready to solve!"
