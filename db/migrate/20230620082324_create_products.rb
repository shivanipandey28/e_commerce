class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand_name
      t.string :description
      t.integer :price
      t.integer :quantity
      t.boolean :status
      t.integer :rating

      t.timestamps
    end
  end
end
