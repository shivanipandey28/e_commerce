class ProductsController < ApplicationController

  def index
    @products = Product.all
  end


  def show 
    @product =Product.find(params[:id])
  end

  def new
    @product = Product.new(product_params)
  end

  def create 
    @product = Product.new(product_params)
     if @product.save
      redirect_to @product
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

  private
  def product_params
    params.require(:product).permit(:name, :brand_name, :rating, :price, :description,:status)
  end

end
