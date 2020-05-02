module Lib where
{-@ type NonZero = {v:Int | v /= 0} @-}

{-@ myDiv :: Int -> NonZero -> Int @-}
myDiv :: Int -> Int -> Int
myDiv = div

someFunc :: IO ()
someFunc = putStrLn "someFunc"
