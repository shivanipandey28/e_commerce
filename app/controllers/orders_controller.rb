class OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
  end

  def new
    @product = Product.find(params[:product_id])
    @order = current_user.orders.new(product_id: @product.id)
  end

  def create
    @order = current_user.orders.new(order_params)
     if @order.save!
      redirect_to @order, notice: "order placed successfully."
     else
      render :new, status: :unprocessable_entity
    end
  end
end

 private
 def order_params
    params.require(:order).permit(:name, :address, :pincode, :mobile, :item_name,
      :quantity,:payment, :product_id, :user_id)
  end
end
