class RenameOrderItemsToCartItems < ActiveRecord::Migration[7.0]
   def self.up
    rename_table :order_items, :cart_items
  end
end
