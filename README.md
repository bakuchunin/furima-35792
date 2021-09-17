# README

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


## items

|Column                    |Type       |Options                        |
| ------------------------ | --------- | ----------------------------- |
|name                      |string     |null: false, index: true       |
|text                      |text       |null: false                    |
|status_id                 |integer    |null: false, default: 0        |
|delivery_charge_bearer_id |integer    |null: false, default: 0        |
|prefecture_id             |integer    |null: false, default: 0        |
|delivery_days_id          |integer    |null: false, default: 0        |
|category_id               |integer    |null: false, default: 0        |
|price                     |integer    |null: false                    |
|user                      |references |null: false, foreign_key: true |

### Association
belongs_to :user
has_one :payment_cards


## users
  
|Column             |Type       |Options                         |
| ----------------- | --------- | ------------------------------ |
|nickname           |string     |null: false                     |
|email              |string     |null: false, unique: true       |
|encrypted_password |string     |null: false                     |
|last_name          |string     |null: false                     |
|first_name         |string     |null: false                     |
|last_name_kana     |string     |null: false                     |
|first_name_kana    |string     |null: false                     |
|birthday           |date       |null: false                     |

### Association
has_one :user_address
has_one :payment_card
has_many :item


## user_addresses

|Column         |Type       |Options                        |
| ------------- | --------- | ----------------------------- |
|post_number	  |string	    |null: false                    |
|prefecture_id  |integer    |null: false, dafault: 0        |
|city	        |string	    |null: false                    |
|house_number   |integer    |null: false                    |
|building_name 	|string	    |                               |
|phone_number   |string	    |                               |

### Association
belongs_to :payment_cards
belongs_to :user


## payment_cards

|Column      |Type       |Options                        |
| ---------- | --------- | ----------------------------- |
|user        |references |null: false, foreign_key: true |
|item        |string     |null: false                    |

### Association
belongs_to :user
belongs_to :item
has_one : user_address
