class Order < ApplicationRecord
   belongs_to :product, optional:true
   belongs_to :user, optional:true
  validates :name,:address, :pincode, :mobile,:item_name, :quantity,:payment, presence: true
end
