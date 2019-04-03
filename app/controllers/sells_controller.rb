class SellsController < ApplicationController
  def index
   #https://www.mercari.com/jp/mypage/listings/listing/の部分
  end
  def new
    #https://www.mercari.com/jp/sell/の部分
    @sell = Product.new
    @shipping_method = ShippingMethod.new
  end

  def create
    @sell = Product.new(sell_params)
    @shipping_method = ShippingMethod.new(shipping_method_params)
    if @sell && @shipping_method.save
      redirect_to sell_path(@sell)
    else
      redirect_to root_path
    end
  end

  def shipping_method
    render partial: 'sells/shipping_method', locals: { delivery_fee_owner_id: params[:delivery_fee_owner_id] }
  end

  private

  def sell_params
    params.require(:product).permit(:name, :info, :price, :status,)
  end
  def shipping_method_params
    params.require(:product).permit(:shipping_method_id)
  end
end
