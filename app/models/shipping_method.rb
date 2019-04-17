class ShippingMethod < ApplicationRecord
  has_many :products
  belongs_to :delivery_fee_owner
end
