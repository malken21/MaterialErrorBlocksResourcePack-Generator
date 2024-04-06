# MaterialErrorBlocksResourcePack-Generator

全てのブロックがマテリアルエラーになるリソースパック(Java 版)を作るために作ったプログラム

ブロックのテクスチャのパスを全て `main.rb` の `TexturePath` 定数 で設定されたパスに変更します。

Minecraft 1.20.4 で動作しました。

## 使い方

1. ruby をインストールします。
2. Minecraft の jar ファイルの `assets/minecraft/models/` にある `block` ディレクトリを`start.bat` ファイルがある階層にコピーします。
3. `start.bat` を実行します。
4. `result` ディレクトリが生成され、そのディレクトリ内に ブロックのテクスチャのパス変更後のjsonファイルが配置されています。
