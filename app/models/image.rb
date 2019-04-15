class Image < ApplicationRecord
  mount_uploaders :image, ImagesUploader
  belongs_to :product, optional: true
end
