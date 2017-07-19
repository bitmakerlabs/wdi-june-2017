class ProductsController < ApplicationController

  def show
    @product = Product.find(params[:id])
  end

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new
    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price = params[:product][:price]

    if @product.save
      flash.notice = 'Product successfully created!'
      redirect_to products_url
    else
      flash.alert = 'Product could not be created. Please correct and try again.'
      render 'new'
    end
  end

end
