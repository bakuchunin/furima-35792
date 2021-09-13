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

|Column                 |Type       |Options                        |
|name                   |string     |null: false, index: true       |
|text                   |text       |null: false                    |
|brand                  |string     |                               |
|status                 |integer    |null: false, default: 0        |
|delivery_charge_bearer |integer    |null: false, default: 0        |
|prefecture_id          |integer    |null: false, default: 0        |
|delivery_days          |integer    |null: false, default: 0        |
|price                  |integer    |null: false                    |
|seller_id              |references |null: false, foreign_key: true |
|buyer_id               |references |foreign_key: true              |
|category_id            |references |null: false, foreign_key: true |

### Association
belongs_to :user
belongs_to :category
has_many :item_images, dependent: :destroy


## item_images

|Column  |Type       |Options                        |
|src     |string     |null: false                    |
|item_id |references |null: false, foreign_key: true |

### Association
belongs_to :item


## users

|Column   |Type    |Options                   |
|nickname |string  |null: false               |
|email    |string  |null: false, unique: true |
|password |string  |null: false               |

### Association
has_one :profile, dependent: :destroy
has_one :user_address, dependent: :destroy
has_one :payment_card, dependent: :destroy
has_many :items, dependent: :destroy, foreign_key: :items
has_many :sns_credentials, dependent: :destroy


## profiles

|Column          |Type       |Options                         |
|last_name       |string     |null: false                     |
|first_name      |string     |null: false                     |
|last_name_kana  |string     |null: false                     |
|first_name_kana |string     |null: false                     |
|birthday        |date       |null: false                     |
|user_id         |references |null: false, foreign_key: :true |

### Association
belongs_to :user


## user_addresses

|Column         |Type       |Options                        |
last_name	      |string     |null: false                    |
first_name	    |string	    |null: false                    |
last_name_kana	|string	    |null: false                    |
first_name_kana	|string	    |null: false                    |
post_number	    |string	    |null: false                    |
prefecture_id  	|integer    |null: false, dafault: 0        |
city	          |string	    |null: false                    |
house_number    |integer    |null: false                    |
building_name  	|string	    |                               |
phone_number    |string	    |                               |
user_id	        |references	|null: false, foreign_key: true |

### Association
belongs_to :user


## payment_cards

|Column      |Type       |Options                        |
|user_id     |references |null: false, foreign_key: true |
|customer_id |string     |null: false                    |

### Association
belongs_to :user
