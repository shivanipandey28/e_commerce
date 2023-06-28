class ProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user.role == 'buyer'
      @products = Product.all
    elsif current_user.role == 'seller'
      @products = current_user.products
    elsif current_user.role == 'admin'
      @sellers = User.where(role: 'seller')
    end
    
    if params[:category].blank?
      @products = Product.all
    else 
      @category_id = Category.find_by(name:params[:category]).id
      @products = Product.where(category_id: @category_id)
    end
  end
        
  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = current_user.products.new
  end

  def create
    @product = current_user.products.new(product_params)
    if @product.save!
     redirect_to @product, notice: "Product created successfully."
    else
     render :new, status: :unprocessable_entity
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

     if @product.update(product_params)
      redirect_to @product, notice: "Product updated successfully."
     else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to root_path, status: :see_other, notice: "Product deleted successfully."  end

  def seller_list
    if current_user.role == "admin"
      seller = User.find(params[:seller_id])
      @products = seller.products
    else
      redirect_to root_path, notice: "there is no product."
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :brand_name, :rating, :price, :description,:status, :quantity, :category_id, :user_id,:role)
  end
end
