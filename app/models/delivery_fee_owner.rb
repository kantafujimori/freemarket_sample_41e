class DeliveryFeeOwner < ApplicationRecord
  has_many :products
  has_many :shipping_methods
end
