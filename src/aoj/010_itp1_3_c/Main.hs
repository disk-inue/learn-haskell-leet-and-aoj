-- 今まで学習した内容で解けた

judgeOrdNum :: Int -> Int -> String
judgeOrdNum x y
  | x < y = show x ++ " " ++ show y
  | otherwise = show y ++ " " ++ show x

inputNums :: Int -> Int -> IO ()
inputNums x y
  | x == 0 && y == 0 = pure ()
  | otherwise = do
      putStrLn $ judgeOrdNum x y
      [a, b] <- map (read :: String -> Int) . words <$> getLine
      inputNums a b

main :: IO ()
main = do
  [x, y] <- map (read :: String -> Int) . words <$> getLine
  inputNums x y
