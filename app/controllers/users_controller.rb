class UsersController < ApplicationController

  def signup
  end

  def show
    @products = Product.order("created_at ASC")
  end
end
