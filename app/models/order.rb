class Order < ApplicationRecord
   belongs_to :product, optional:true
   belongs_to :user, optional:true
   
    validates :name, presence: true
    validates :address, presence: true
    validates :pincode, presence: true
    validates :mobile, presence: true
    validates :item_name, presence: true
    validates :quantity, presence: true
    validates :payment, presence: true

end
