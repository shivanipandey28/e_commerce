class OrdersController < ApplicationController

   def index
    @orders = current_user.orders
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @product = Product.find(params[:product_id])
    @order = current_user.orders.new(product_id: @product.id)
  end

  def create
    @order = current_user.orders.new(order_params)
    if @order.save
     redirect_to @order, notice: "order placed successfully."
    else
     render :new, status: :unprocessable_entity
    end
  end

  def edit
    @product = Product.find(params[:product_id])
    @order = current_user.orders.find(params[:order_id])
  end

  def update
    @order = current_user.orders.find(order_params)

    if @order.update(order_params)
     redirect_to @order, notice: "order updated successfully."
    else
     render :edit, status: :unprocessable_entity, notice: "order not updated"
    end
  end

  def destroy
    @order = current_user.orders.find(params[:id])
    @order.destroy
    redirect_to products_path(@products), notice: "Order deleted successfully."
  end

private
 def order_params
    params.require(:order).permit(:name, :address, :pincode, :mobile, :item_name,
      :quantity,:payment, :product_id, :user_id)
  end
end
