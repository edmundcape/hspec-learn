
module Main where

import Test.Hspec

import Lib

main :: IO ()
main = hspec spec


spec = do
  describe "Adds things" $ do
    it "2 + 2 == 4" $ do
      add 2 2 `shouldBe` 4

    it "2 + 2 == 5" $ do
      add 2 2 `shouldBe` 6
