require 'rails_helper'

describe Image do
  describe '#create' do
    it "is valid without a product_id" do
      image = build(:image)
      expect(image).to be_valid
    end
    it "is invalid without a product_id" do
      image = build(:image, product_id:"")
      expect(image).to be_invalid
    end
  end
end