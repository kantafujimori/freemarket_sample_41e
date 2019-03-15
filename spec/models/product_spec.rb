require 'rails_helper'
describe Product do
    #productにタイトルと価格が入っていれば有効であること
    it "is valid with name and price" do
        product = build(:product)
        image = product.images.build(:images) 
      expect(@product).to be_valid
    end
  end