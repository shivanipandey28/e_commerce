class CartItemsController < ApplicationController
  before_action :set_cart_item, only:[:show, :destroy]
  before_action :authenticate_user!
  
  def index
     @cart_items = current_user.cart.cart_items
    @product_quantities = {}
  end

  def new
    @cart_item = CartItem.new
  end

  def show
  end

  def create
  if current_user.cart
    @cart = current_user.cart
  else 
    @cart = Cart.create(user_id: current_user.id)
  end
   
  @cart_item = @cart.cart_items.find_by(product_id: params[:cart_item][:product_id])

  if @cart_item
    @cart_item.quantity += 1
    if @cart_item.save
      redirect_to cart_items_path, notice: "Item quantity updated in the cart successfully."
    else
      redirect_to products_path, alert: "Failed to update item quantity in the cart."
    end
  else
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.user_id = current_user.id
    @cart_item.cart_id = @cart.id

    if @cart_item.save
      redirect_to cart_items_path, notice: "Item added to cart successfully."
    else
      redirect_to products_path, alert: "Failed to add item to cart."
    end
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
