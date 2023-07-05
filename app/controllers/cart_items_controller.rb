class CartItemsController < ApplicationController
  before_action :set_cart_item, only:[:show, :destroy]
  before_action :authenticate_user!
  
  def index
     @cart_items = current_user.cart.cart_items
  end

  def new
    @cart_item = CartItem.new
  end

  def show
  end

  def create
    if current_user.cart
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
    if @cart_item.destroy
       redirect_to root_path, status: :see_other, notice: "your item deleted successfully."
    else
      redirect_to root_path, status: :see_other, notice: "Failed to delete item."
   end
  end

  private
  def cart_item_params
    params.require(:cart_item).permit(:quantity, :cart_id, :user_id, :product_id)
  end

  def set_cart_item
    @cart_item = CartItem.find(params[:id])
  end

end
