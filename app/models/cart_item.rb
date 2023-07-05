class CartItem < ApplicationRecord
  belongs_to :cart, optional:true
  belongs_to :product, optional:true
  belongs_to :user, optional:true
end
