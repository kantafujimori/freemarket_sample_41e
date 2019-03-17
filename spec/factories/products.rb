FactoryBot.define do

  factory :product do
    name              {Faker::Name.name}
    price             {120}

    after(:create) do |image|
      build(:image, image: image)
    end
  end
end