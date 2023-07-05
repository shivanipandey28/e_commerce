class Order < ApplicationRecord
   belongs_to :product, optional:true
   belongs_to :user, optional:true
  validates :name,:address, :pincode, :mobile,:item_name, :quantity,:payment, presence: true

  before_create :set_order_date

  private
  def set_order_date
    self.order_date = Date.current
  end

end
