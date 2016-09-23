class ProductsController < ApplicationController
  def index
  	@products = Product.get_all
  	puts '^^^^^^^^^^^in controller^^^^^^^^^^^^^'
  	puts @products
  end
  def new
    @categories = Category.get_all
  end
  def create
    message = Product.create_product(product_params)
    flash[:errors] = message

    redirect_to '/products/new'
  end
  def show
  	@product = Product.get_one(params[:id])
  	@comments = Comment.get_one(params[:id])
  end
  def edit
    @product = Product.get_one(params[:id])
    @categories = Category.get_all
  end
  def update
    Product.update_product(params[:id], product_params)
    redirect_to root_path
  end
  def destroy
    Product.delete(params[:id])
    redirect_to root_path
  end
  private
  def product_params
    params.require(:product).permit(:product, :description, :price, :category_id)
  end
end
