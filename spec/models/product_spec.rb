require 'rails_helper'

describe Product, type: :model do

  describe '#create' do
    it "is valid without a name" do
      product = build(:product)
      expect(product).to be_valid
    end
    it "is invalid without a name" do
      product = build(:product, name:"")
      expect(product).to be_invalid
    end

  end
end