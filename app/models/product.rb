class Product < ApplicationRecord
  #validates :name,:brand_name,:rating,:price,:description, presence: true
  belogns_to :category
end
