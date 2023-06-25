class ProductsController < ApplicationController
  before_action :authenticate_user!


  def index
     if current_user.admin?
      @users = User.where(role: "seller")
      @products = Product.all
    elsif current_user.seller?
      @products = current_user.products
    else
      @products = Product.all
    end
     @product_count = @products.count
  end

  def show
    @product =Product.find(params[:id])
  end

  def new
    @product = current_user.products.new
  end

  def create
    @products = current_user.products.new(product_params)

     if @products.save
      redirect_to @products
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
      redirect_to @product
     else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to root_path, status: :see_other
  end
   
  def test
  end

  private
  def product_params
    params.require(:product).permit(:name, :brand_name, :rating, :price, :description,
      :status, :quantity, :category_id, :user_id,:role)
  end

end
