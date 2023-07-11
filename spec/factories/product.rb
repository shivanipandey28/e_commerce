FactoryBot.define do
  factory :product do
    name { 'Sample Product' }
    brand_name { 'Sample Brand' }
    description { 'This is a sample description' }
    price { 10 }
    quantity { 5 }
    status { true }
    rating { 4 }
    association :category
    association :user
  end
end
