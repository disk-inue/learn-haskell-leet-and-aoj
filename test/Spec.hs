module Main (main) where

import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "LeetCode Solutions" $ do
    it "placeholder test" $ do
      True `shouldBe` True
