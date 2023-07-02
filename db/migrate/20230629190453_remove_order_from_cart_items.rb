class RemoveOrderFromCartItems < ActiveRecord::Migration[7.0]
  def change
    remove_reference :cart_items, :order, null: false, foreign_key: true
  end
end
