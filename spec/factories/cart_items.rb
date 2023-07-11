FactoryBot.define do
  factory :cart_item do
    association :user
    association :product
    association :cart
    quantity { 1 }
  end
end
