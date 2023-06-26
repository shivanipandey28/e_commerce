class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :address
      t.integer :pincode
      t.integer :mobile
      t.string :item_name
      t.integer :quantity
      t.string :payment
      t.references :product, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
