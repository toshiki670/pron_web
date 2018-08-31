# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  - Ruby 2.5.1

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
    `http://localhost:3001/`

  - Dockerコンテナの中に入る(ローカルサーバが起動している必要がある)
    `$ docker-compose run --rm web bash`

  - Migrate(ローカルサーバが起動している必要がある)
    `$ docker-compose exec web rails db:migrate`

  - コンソール起動
    `$ docker-compose exec web rails console`

  - データベース接続
    `$ docker-compose exec db psql -h db -U postgres -d myapp_development`

* 初期設定
  1. `$ docker-compose build`
  2. `$ docker-compose up`
  3. 別ターミナルで
     `$ docker-compose run web rake db:create`
     `$ docker-compose run web rake db:migrate`

* ...
