class ProductsController < ApplicationController
  def index
  	@products = Product.get_all
  	puts '^^^^^^^^^^^in controller^^^^^^^^^^^^^'
  	puts @products
  end
  def new
  end
  def show
  	# @product = Product.get_one(params[:id])
  	# @comments = Comment.get_one(params[:id])
  end
end
