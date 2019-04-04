class AddDeliveryFeeOwnerIdToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :delivery_fee_owner_id, :integer
  end
end
