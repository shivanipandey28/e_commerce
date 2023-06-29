class Order < ApplicationRecord
   belongs_to :product
   belongs_to :user
   has_many :cart_items, dependent: :destroy
   # validates :name, :address, :pincode, :mobile, :item_name,
   #          :quantity, :payment,:user_id, presence: true
end
