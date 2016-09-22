class ProductsController < ApplicationController
  def index
  	@products = Product.get_all
  	puts '^^^^^^^^^^^in controller^^^^^^^^^^^^^'
  	puts @products
  end
  def new
    @categories = Category.get_all
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
end
