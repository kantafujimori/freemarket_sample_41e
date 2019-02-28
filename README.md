## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|email|string|null: false, unique: true|
|password|string|null: false|

### Association
- has_many :messages
- has_many :members
- has_many :groups, through :members


## membersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|nul: false, foreign_key: true|
|group_id|integer|nul: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group


## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null:false, add_index|

### Association
- has_many :messages
- has_many :members
- has_many :users, through :members


## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|body|text||
|image|string||
|group_id|integer|null :false, foreign_key: true|
|user_id|integer|null :false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group


## User_evaluationsテーブル

|Colum|Type|Option|
|-----|----|------|
|user_id|integer|null: false, foreign_key: true|
|evaluation_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :evaluation


## Creditsテーブル

|Colum|Type|Option|
|-----|----|------|
|card_number|integer|null: false, unique: true|
|expiration_month|integer|null: false|
|expiration_year|integer|null: false|
|security_code|integer|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user


## Addressesテーブル

|Colum|Type|Option|
|-----|----|------|
|first_name|string|null: false|
|last_name|string|null: false|
|postal_code|integer|null: false|
|prefecture|integer|null: false, gemの使用|
|municipality|string|null: false|
|address_number|integer|null: false|
|building_name|string|
|first_name_phonetic|string|null: false|
|last_name_phonetic|string|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user


## Evaluationsテーブル

|Colum|Type|Option|
|-----|----|------|
|value|string|null: false|

### Association
- has_many :user_evaluations


## Commentsテーブル

|Colum|Type|Option|
|-----|----|------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|product_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :product


## productsテーブル

|Column|Type|Options|
|------|----|-------|

|seller_id|references|null: false, foreign_key: true|
|buyer_id|references|null: false, foreign_key:true
|name|string|null: false,index:true|
|info|text|null: false|
|price|integer|null: false|
|category_id|references|null: false, foreign_key: true|
|brand_id|references|null: false, foreign_key: true|
|size_id|references|null: false, foreign_key: true|
|status_id|references|null: false, foreign_key: true|
|delivery_fee_owner_id|references|null: false, foreign_key: true|
|sell_status_id|references|null: false, foreign_key: true|
|shipping_method_id|references|null: false, foreign_key: true|


### Association
- has_many : images
- has_many : comments
- belongs_to : seller_id, class_name: User
- belongs_to : buyer_id, class_name: User
- belongs_to : category
- belongs_to : brand,optional: true
- belongs_to : sell_status
- belongs_to : size
- belongs_to : status
- belongs_to : delivery_fee_owner
- belongs_to : shipping_method
- belongs_to : delivery_date


## Imageテーブル
|Column|Type|Options|
|------|----|-------|
|product_id|integer|foreign_key|
|image|string|

### Association
belongs_to :product

## Categoryテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false,index: true|
|ancestry|string|null: false,index: true|
|belongs|string|null: false,index: true|

### Association
has_many :products

## Brandテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
has_many :products

## Sell_statusテーブル
|Column|Type|Options|
|------|----|-------|
|status|string|null: false|

### Association
has_many :products

## Sizeテーブル
|Column|Type|Options|
|------|----|-------|
|size|string|null: false|

### Association
has_many :products

## Statusテーブル
|Column|Type|Options|
|------|----|-------|
|status|string|null: false|

### Association
has_many :products

## Delivery_fee_ownerテーブル
|Column|Type|Options|
|------|----|-------|
|Delivery_fee_owner|string|null: false|

### Association
has_many :products

## shipping_methodテーブル
|Column|Type|Options|
|------|----|-------|
|shipping_method|string|null: false|

### Association
has_many :products

## delivery_dateテーブル
|Column|Type|Options|
|------|----|-------|
|delivery_date|string|null: false|

### Association
has_many :products
