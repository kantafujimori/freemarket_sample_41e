# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ShippingMethod.create(shipping_method: '未定', delivery_fee_owner_id: 1)
ShippingMethod.create(shipping_method: 'ラクラクメルカリ便', delivery_fee_owner_id: 1)
ShippingMethod.create(shipping_method: 'ゆうメール', delivery_fee_owner_id: 1)
ShippingMethod.create(shipping_method: 'レターパック', delivery_fee_owner_id: 1)
ShippingMethod.create(shipping_method: '普通郵便', delivery_fee_owner_id: 1)
ShippingMethod.create(shipping_method: 'クロネコヤマト', delivery_fee_owner_id: 1)
ShippingMethod.create(shipping_method: 'ゆうパック', delivery_fee_owner_id: 1)
ShippingMethod.create(shipping_method: 'クリックポスト', delivery_fee_owner_id: 1)
ShippingMethod.create(shipping_method: 'ゆうパケット', delivery_fee_owner_id: 1)
ShippingMethod.create(shipping_method: 'レターパック', delivery_fee_owner_id: 1)
ShippingMethod.create(shipping_method: '未定', delivery_fee_owner_id: 2)
ShippingMethod.create(shipping_method: 'クロネコヤマト', delivery_fee_owner_id: 2)
ShippingMethod.create(shipping_method: 'ゆうパック', delivery_fee_owner_id: 2)
ShippingMethod.create(shipping_method: 'ゆうメール', delivery_fee_owner_id: 2)