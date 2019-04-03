class AddDeliveryFeeOwnerIdToShippingMethod < ActiveRecord::Migration[5.2]
  def change
    add_column :shipping_methods, :delivery_fee_owner_id, :integer
  end
end
