class AddCategoryIdToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :Category, foreign_key: true
  end
end
