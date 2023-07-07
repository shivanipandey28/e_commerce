class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_order, only:[:show, :destroy]

  def index
    @orders = current_user.orders
  end

  def show
  end

  def new
    @product = Product.find(params[:product_id])
    @order = current_user.orders.new(product_id: @product.id)
  end

  def create
    @order = current_user.orders.new(order_params)
    # @order.product_id = params[:order][:product_id]
    @order.order_date = Date.current
    if @order.save
     redirect_to @order, notice: "order placed successfully."
    else
     #render :new, status: :unprocessable_entity
     redirect_to @order, notice: "order not placed, please fill the all details befor placed"
    end
  end

  def destroy
    if @order.destroy
       redirect_to root_path, status: :see_other, notice: "Order deleted successfully."
   else
      redirect_to root_path, status: :see_other, notice: "Failed to delete order."
   end
  end

  private
  def order_params
    params.require(:order).permit(:name, :address, :pincode, :mobile, :item_name,
      :quantity,:payment, :product_id, :user_id,:order_date, :delivery_date)
  end

  def set_order
    @order = Order.find(params[:id])
  end
end
