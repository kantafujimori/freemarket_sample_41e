class Image < ApplicationRecord
  belongs_to :product,optional: true
  validates :product_id, presence: true
end
