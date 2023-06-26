class OrdersController < ApplicationController
   def new
    @order = current_user.orders.new
  end

  def create
    @order = current_orders.new(order_params)
     if @product.save
      redirect_to @order, notice: "order placed successfully."
     else
      render :new, status: :unprocessable_entity
    end
  end

   private
  def product_params
    params.require(:order).permit(:name, :address, :pincode, :mobile, :item_name,
      :quantity,  :product_id, :user_id,)
  end
end
