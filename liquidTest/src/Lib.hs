module Lib where
{-@ type NonZero = {v:Int | v /= 0} @-}

{-@ myDiv :: Int -> NonZero -> Int @-}
myDiv :: Int -> Int -> Int
myDiv = div

safeDiv a 0 = Nothing
safeDiv a b = Just $ myDiv a b


{-@ lazy someFunc @-}
someFunc :: IO ()
someFunc = do
	putStrLn "値を入力してください"
	a <- readLn
	putStrLn "値を入力してください"
	b <- readLn
	case safeDiv a b of
		Just v -> putStrLn (show v)
		Nothing -> do
			putStrLn "0での除算は禁止です．初めから再入力してください"
			>> someFunc