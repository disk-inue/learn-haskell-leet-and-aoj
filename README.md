# leetcode-30days

LeetCode 30 Days Challenge の Haskell 練習用プロジェクト

## 必要なもの

- GHC 9.10.3+
- Stack 3.3+

## セットアップ

```bash
# 依存関係のインストールとビルド
stack build
```

## 使い方

```bash
# 実行
stack exec leetcode

# テスト
stack test

# REPL で試す
stack ghci
```

## プロジェクト構造

```
├── app/
│   └── Main.hs          # エントリーポイント
├── src/
│   ├── Solutions.hs     # LeetCode 解答モジュール
│   └── Utils/
│       └── Timer.hs     # 実行時間計測ユーティリティ
├── test/
│   └── Spec.hs          # テストスイート
├── leetcode-30days.cabal
└── stack.yaml
```

## Timer の使い方

```haskell
import Utils.Timer (withTimer, timeIt)

-- 処理時間を表示
main :: IO ()
main = withTimer $ do
  putStrLn "処理中..."
  -- 終了時に "Elapsed: X.XXXX sec" が出力される

-- 処理時間を値として取得
main :: IO ()
main = do
  (result, elapsed) <- timeIt $ pure (sum [1..1000000])
  print result
  putStrLn $ "Time: " ++ show elapsed ++ " sec"
```
