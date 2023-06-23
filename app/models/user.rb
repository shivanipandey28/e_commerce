class User < ApplicationRecord
  has_many :products, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
  def set_defaults
    self.role ||= :user
  end
  enum role: { admin: "admin", seller: "seller", buyer: "buyer"}   
end
