class Product < ApplicationRecord
  has_many :images
  belongs_to :delivery_fee_owner
  belongs_to :shipping_method
  validates :name, presence: true
  enum status: { '---': '', '新品未使用': 1, '未使用に近い': 2, '目立った傷や汚れなし': 3,
                 'やや傷や汚れあり': 4, '傷や汚れあり': 5, '全体的に状態が悪い': 6 }
end
