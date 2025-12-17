module Utils.Timer
  ( withTimer
  , timeIt
  ) where

import Data.Time.Clock (getCurrentTime, diffUTCTime)
import Text.Printf (printf)

-- | 処理を実行して経過時間を表示する
withTimer :: IO a -> IO a
withTimer action = do
  start <- getCurrentTime
  result <- action
  end <- getCurrentTime
  let elapsed = realToFrac (diffUTCTime end start) :: Double
  printf "Elapsed: %.4f sec\n" elapsed
  return result

-- | 処理を実行して結果と経過時間のタプルを返す
timeIt :: IO a -> IO (a, Double)
timeIt action = do
  start <- getCurrentTime
  result <- action
  end <- getCurrentTime
  let elapsed = realToFrac (diffUTCTime end start) :: Double
  return (result, elapsed)
