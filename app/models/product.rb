class Product < ApplicationRecord
  #validates :name,:brand_name,:rating,:price,:description, presence: true
  belongs_to :category
  belongs_to :user
  validates :category_id, presence: true
end
