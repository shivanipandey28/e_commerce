class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_items, dependent: :destroy

  # def add_product(product,quantity)
  #   current_item = cart_items.find_by(product_id: product.id)
  #   if current_item 
  #     current_item.increment(:quantity, quantity)
  #   else
  #     current_item = cart_items.build(product_id: product.id, quantity: quantity)
  #   end
  #   current_item.save
  # end
  
end
