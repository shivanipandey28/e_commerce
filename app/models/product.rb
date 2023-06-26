class Product < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :orders, dependent: :destroy
  validates :category_id, :user_id, presence: true
end
