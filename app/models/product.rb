class Product < ApplicationRecord
  validates :name,:brand_name,:rating,:price,:description,:status, presence: true
end
