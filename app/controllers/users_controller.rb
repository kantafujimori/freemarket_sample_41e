class UsersController < ApplicationController
  def show
    @products = Product.order("created_at ASC")
  end
end
