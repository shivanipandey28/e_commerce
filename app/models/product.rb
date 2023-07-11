class Product < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :orders, dependent: :destroy
  has_one_attached :image
  validates :category, :user, :category_id, :user_id, presence: true
end