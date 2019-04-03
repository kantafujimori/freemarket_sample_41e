class AddSellfuncitonToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :info, :text
    add_column :products, :status, :integer
  end
end
