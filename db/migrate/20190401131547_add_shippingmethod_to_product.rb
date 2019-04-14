class AddShippingmethodToProduct < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :shipping_method, foreign_key: true
  end
end
