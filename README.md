## productsテーブル

|Column|Type|Options|
|------|----|-------|

|seller_id| |null: false, foreign_key: true|
|buyer_id| |null: false, foreign_key:true
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


|user_id|references|null: false, foreign_key: true|

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
