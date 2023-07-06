class Order < ApplicationRecord
  belongs_to :product, optional:true
  belongs_to :user, optional:true
 # validates :name,:address, :pincode,:item_name, :quantity,:payment, presence: true
 #validates :mobile, presence: true, length: { is: 10 }
  before_create :set_order_date

  private
  def set_order_date
    self.order_date = Date.current
  end

end
