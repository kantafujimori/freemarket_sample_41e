class RemoveDeliveryFeeOwnerIdFromProduct < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :delivery_fee_owner_id, :integer
  end
end
