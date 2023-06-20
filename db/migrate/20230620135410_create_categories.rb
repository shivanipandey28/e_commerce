class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :grocery
      t.string :electronic
      t.string :mobile
      t.string :healthcare
      t.string :toys
      t.string :kitchen
      t.string :fashion

      t.timestamps
    end
  end
end
