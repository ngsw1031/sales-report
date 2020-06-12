# README

# sales-report DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|password|string|null: false|
|email|integer|null: false|
|team_id|integer|null: false|
|company_id|integer|null: false|
### users Association
- has_many :reports
- has_many :comments
- has_many :goods
- belongs_to :team

## teamsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|user_id|references|null: false|
### teams Association
- has_many :user
- has_many :reports

## reportsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|image|text|null: false|
|user_id|references|null: false|
|team_id|references|null: false|
### reports Association
- belongs_to :user
- belongs_to :team
- has_many :comments
- has_many :goods

# commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|team_id|integer|null: false, foreign_key: true|
### comments Association
- belongs_to :post
- belongs_to :user
- belongs_to :report

## goodsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :report
- belongs_to :user

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
