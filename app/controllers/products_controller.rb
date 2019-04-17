class ProductsController < ApplicationController
  def index
    @products = Product.order("created_at ASC").limit(4)
  end
  def show

  end

  def new

  end
  def create

  end
  def edit

  end

  def update

  end
  def destroy

  end

end
