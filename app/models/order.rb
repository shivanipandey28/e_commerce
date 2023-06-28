class Order < ApplicationRecord
   belongs_to :product
   belongs_to :user
   has_many :order_items, dependent: :destroy
   validates :product_id, :user_id, presence: true
end
