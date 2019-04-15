class AddShippingFromToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :shipping_from, :integer
  end
end
