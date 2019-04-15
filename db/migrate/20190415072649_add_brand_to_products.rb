class AddBrandToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :brand, :string, null: true
    add_index :products, :brand
  end
end
