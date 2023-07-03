class CartItemsController < ApplicationController
  def index
     @cart_items = current_user.cart.cart_items
  end

  def new
    @cart_item = CartItem.new
  end

  def show
    @cart_item = CartItem.find(params[:id])
    @cart = @current_cart
  end

  def create
    unless current_user.cart
      @cart = Cart.create(user_id: current_user.id)
    else 
       @cart = current_user.cart
    end
   
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.user_id = current_user.id
    @cart_item.cart_id = current_user.cart.id

    if @cart_item.save
      redirect_to cart_items_path, notice: "Item added to cart successfully."
    else
      redirect_to products_path, alert: "Failed to add item to cart."
    end
  end
  
  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to cart_items_path, notice: 'Item removed from your cart'
  end

  private
  def cart_item_params
    params.require(:cart_item).permit(:quantity, :cart_id, :user_id, :product_id)
  end
end
