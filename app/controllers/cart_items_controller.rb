class CartItemsController < ApplicationController
  def index
  end

  def new
    @cart_item = CartItem.new
  end

  def show
    @cart_item = CartItem.find(params[:id])
  end

  def create
    @cart_item = current_user.cart_items.build(cart_item_params)

    if @cart_item.save
      redirect_to @cart_item, notice: 'Item added to your cart'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to cart_items_path, notice: 'Item removed from your cart'
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:quantity, :product_id)
  end
end
