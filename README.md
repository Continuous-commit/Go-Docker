# web-service-gin

gin と mysql を使った簡単な web アプリケーションです。

## mysql

ホストで port 3306 で起動してください。

## 環境変数

mysql を使用するために以下の環境変数を設定してください

- DBUSER
- DBPASS

## database

- myapp で database を作成してください。

- sql ディレクトリ以下にテーブル作成と seed データ作成の sql ファイルを作成しているので実行してください

## docker

docker 化はしていないため、docker を使用する場合は適宜コードを書き換えてください。

## 環境構築方法

```
$ git clone https://github.com/Continuous-commit/go-docker.git
$ docker-compose up
```
