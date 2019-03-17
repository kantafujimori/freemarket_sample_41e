FactoryBot.define do

  factory :image do
    product
    image              {Faker::Avatar.image}
    product_id         {2}
  end
end