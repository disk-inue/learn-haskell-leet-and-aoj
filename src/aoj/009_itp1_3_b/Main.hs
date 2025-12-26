printCase :: Int -> Int -> IO ()
printCase inputCount inputNum
  | 0 == inputNum = pure ()
  | otherwise = do
      putStrLn $ "Case " ++ show inputCount ++ ": " ++ show inputNum
      newInputNum <- readLn
      printCase (inputCount + 1) newInputNum

main :: IO ()
main = do
  inputNum <- readLn
  printCase 1 inputNum
