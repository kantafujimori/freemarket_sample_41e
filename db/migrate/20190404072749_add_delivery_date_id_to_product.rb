class AddDeliveryDateIdToProduct < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :delivery_date, foreign_key: true
  end
end
