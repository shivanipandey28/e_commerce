class Product < ApplicationRecord
  belongs_to :category, optional:true
  belongs_to :user,optional:true
  has_many :orders, dependent: :destroy
  has_one_attached :image
  validates :category_id, :user_id, presence: true
end
