class Product < ApplicationRecord
  #validates :name,:brand_name,:rating,:price,:description, presence: true
  belongs_to :category
  validates :category_id, presence: true
end
