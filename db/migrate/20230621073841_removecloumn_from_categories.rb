class RemovecloumnFromCategories < ActiveRecord::Migration[7.0]
  def up
    remove_column :categories, :grocery 
    remove_column :categories, :healthcare
    remove_column :categories,:fashion
    remove_column :categories, :kitchen
    remove_column :categories, :toys
    remove_column :categories, :electronic
     remove_column :categories, :mobile
     remove_column :categories, :toys
  end
  def down
    remove_column :categories, :grocery 
    remove_column :categories, :healthcare
    remove_column :categories,:fashion
    remove_column :categories, :kitchen
    remove_column :categories, :toys
    remove_column :categories, :electronic
    remove_column :categories, :mobile
     remove_column :categories, :toys
  end

end
