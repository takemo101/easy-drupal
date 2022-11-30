# drupalをdockerで簡単に動かす
qiitaの記事を参考に、dockerで動かせる環境を作ってみた。

## 使い方

以下コマンドを実行する。

```bash
# 1 .envファイルを作成して DBのパスワードなどを設定する
make setup

# 2 drupalのプロジェクトファイルを展開する
make create-project

# 3 docker-composeを起動して localhost にアクセスする
make start

# 5 シェルに入る
make shell

# 4 終わったら停止する
make stop

```
