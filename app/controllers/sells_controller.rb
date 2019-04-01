class SellsController < ApplicationController
  def index
   #https://www.mercari.com/jp/mypage/listings/listing/の部分
  end
  def new
    #https://www.mercari.com/jp/sell/の部分
    @sell = Product.new
  end

  def create
    @sell = Product.new(sell_params)
    if @sell.save
      redirect_to sell_path(@sell)
    else
      redirect_to root_path
    end
  end

  private

  def sell_params
    params.require(:product).permit(:name, :info, :price, :status)
  end
end
