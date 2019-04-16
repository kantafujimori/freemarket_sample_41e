require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'
class Image < ApplicationRecord
  mount_uploaders :image, ImagesUploader
  belongs_to :product, optional: true
end
