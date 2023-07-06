class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable, :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :products, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_one :cart
  has_many :cart_items, dependent: :destroy
  validates :role, presence: true

  after_create :create_cart_for_buyer
  after_initialize :set_default_role, if: :new_record?

  enum role: { admin: "admin", seller: "seller", buyer: "buyer" }

  def set_default_role
    self.role ||= 'buyer'
  end

  private

  def create_cart_for_buyer
    if role == "buyer" && cart.nil?
      create_cart
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:role])
  end
end
