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
    Product.create_product(product_params)
    # redirect_to root_path
    redirect_to '/'

  end
  def show
  	@product = Product.get_one(params[:id])
  	# @comments = Comment.get_one(params[:id])
  end
  def edit
    @product = Product.get_one(params[:id])
    @categories = Category.get_all
  end
  def update
  end
  private
  def product_params
    params.require(:product).permit(:product, :description, :price, :category_id)
  end
end
