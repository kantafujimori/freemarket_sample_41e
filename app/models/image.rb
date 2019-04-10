class Image < ApplicationRecord
  mount_uploaders :image, ImagesUploader
  belongs_to :product, optional: true
  #validates :product_id, presence: true
end
