class SellsController < ApplicationController
  def index
   #https://www.mercari.com/jp/mypage/listings/listing/の部分
  end
  def new
    #https://www.mercari.com/jp/sell/の部分
    @sell = Product.new
    @shipping_method = ShippingMethod.new
    @categories = Category.eager_load(children: :children).where(parent_id: nil)

  end

  def create
    @sell = Product.new(sell_params)
    if @sell.save!
      redirect_to sell_path(@sell)
    else
      redirect_to root_path
    end
  end

  def shipping_method
    @sell = Product.new
    render partial: 'sells/shipping_method', locals: { delivery_fee_owner_id: params[:delivery_fee_owner_id] }
  end

  def category_middle
    @categories = Category.roots.find_by(id: params[:parent_id])
  end
  def category_bottom
    @categories = Category.roots.find_by(id: params[:top_id]).children.find(params[:parent_id])
  end
  private

  def sell_params
    params.require(:product).permit(:delivery_fee_owner_id, :shipping_method_id,:delivery_date_id, :name, :info, :price, :status,
    images_attributes:[ :product_id,image: []])
  end
end
