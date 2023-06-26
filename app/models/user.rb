class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #validates :role, presence: true
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
         
end
