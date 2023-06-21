class Product < ApplicationRecord
  #validates :name,:brand_name,:rating,:price,:description, presence: true
  belongs_to :category
end
