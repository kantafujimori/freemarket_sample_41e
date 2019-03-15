FactoryBot.define do

    factory :product do
      name                    "test"
      price                   1  
  
      after(:create) do |product|
        create_list(:images, 4, product: product)
      end
    end
  end