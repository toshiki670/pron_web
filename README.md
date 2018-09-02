# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  - Ruby 2.5.0

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ファイル構成(GemfileやDockerfile)を変更した時
  `$ docker-compose up --build`

* ローカルサーバ起動
  `$ docker-compose up`
  - URL(ローカル環境)
    `http://localhost:3005/`

  - Dockerコンテナの中に入る(ローカルサーバが起動している必要がある)
    `$ docker-compose exec server bash`

  - Migrate(ローカルサーバが起動している必要がある)
    `$ docker-compose exec server rails db:migrate`

  - コンソール起動
    `$ docker-compose exec server rails console`

  - データベース接続
    `$ docker-compose exec db `

* 初期設定
  1. `$ docker-compose build`
  2. `$ docker-compose up`
  3. 別ターミナルで
     `$ docker-compose run web rake db:create`
     `$ docker-compose run web rake db:migrate`

* アプリ構築(一度実行するだけで良い)
  1. `docker-compose run server rails new . --force --skip-bundle --skip-test --database=mysql`

* ...
