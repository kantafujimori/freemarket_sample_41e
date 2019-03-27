class ProductsController < ApplicationController
  def index
    @products = Product.order("created_at ASC").limit(4)
  end
  def new

  end
  def buy

  end
end
