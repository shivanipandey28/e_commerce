FactoryBot.define do
  factory :order do
    name { "John Doe" }
    address { "123 Main Street" }
    pincode { 12345 }
    mobile { 1234567890 }
    item_name { "Sample Item" }
    quantity { 1 }
    payment { "Cash" }
    association :product
    association :user
    order_date { Date.today }
    delivery_date { Date.tomorrow }
  end
end
