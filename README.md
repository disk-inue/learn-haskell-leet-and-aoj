# leetcode-30days

LeetCode 30 Days Challenge の Haskell 練習用プロジェクト

## 必要なもの

- GHC 9.8.4 (HLS対応バージョン)
- Stack 3.3+
- ghcup (Haskell ツールチェーン管理)

## セットアップ

### 1. ghcup のインストール

```bash
# macOS / Linux
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
```

### 2. GHC と HLS のインストール

```bash
# GHC 9.8.4 をインストール・設定
ghcup install ghc 9.8.4
ghcup set ghc 9.8.4

# HLS (Haskell Language Server) をインストール
ghcup install hls

# 確認
ghc --version  # 9.8.4 が表示されればOK
```

### 3. プロジェクトのビルド

```bash
# 依存関係のインストールとビルド
stack build
```

### 補足: GHC バージョンについて

このプロジェクトは `lts-23.0` (GHC 9.8.4) を使用している。
HLS は特定の GHC バージョンにしか対応していないため、`stack.yaml` の resolver と ghcup の GHC バージョンを揃える必要がある。

| resolver | GHC | HLS対応 |
|----------|-----|---------|
| lts-23.x | 9.8.4 | o |
| lts-24.x | 9.10.x | x (9.10.1のみ対応) |

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
