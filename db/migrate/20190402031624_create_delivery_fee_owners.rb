class CreateDeliveryFeeOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :delivery_fee_owners do |t|
      t.string :delivery_fee_owner, null: false

      t.timestamps
    end
  end
end
