class ProductsController < ApplicationController

  def index
    @products = Product.order("created_at ASC").limit(4)
  end

  def show
    @products = Product.order("created_at ASC").limit(3)
  end

  def new
  end
end
