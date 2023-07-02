class User < ApplicationRecord
  has_many :products, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_one  :cart
  has_many :cart_items, dependent: :destroy
  #after_create :create_cart
  after_create :create_cart_for_buyer


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable, :omniauthable
  # validates :role, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:role])
  end
  
  def set_defaults
    self.role ||= :buyer
   enum role: { admin: "admin", seller:"seller", buyer: "buyer"}
 end

 # def create_cart
 #  return if cart.present?
 #   #@current_cart = Cart.create(user_id: id)
 #   build cart
 # end
  private

  def create_cart_for_buyer
    if role == "buyer" && cart.nil?
      create_cart
    end
  end
end
