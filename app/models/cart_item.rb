class CartItem < ApplicationRecord
  belongs_to :order
  belongs_to :cart
  belongs_to :product
  belongs_to :user
end
