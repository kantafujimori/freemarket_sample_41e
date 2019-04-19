class UsersController < ApplicationController

  def signup
  end

  def show
    @products = Product.order("created_at ASC")
  end

  # def create
  #   Address.new(user_params)
  # end


  # private

  # def user_params
  #   params.require(:addres).permit(:first_name, :last_name, :first_name_phon, :last_name_phon)
  # end
end
