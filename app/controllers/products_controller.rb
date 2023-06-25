class ProductsController < ApplicationController
  before_action :authenticate_user!


  def index
     @products = Product.all
     @users = User.where(role: "seller")
   end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = current_user.products.new
  end

  def create
    @product = current_user.product.new(product_params)
     if @product.save
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

    redirect_to root_path, status: :see_other, notice: "Product deleted successfully."
  end

  private
  def product_params
    params.require(:product).permit(:name, :brand_name, :rating, :price, :description,
      :status, :quantity, :category_id, :user_id,:role)
  end

end
