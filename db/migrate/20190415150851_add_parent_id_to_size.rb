class AddParentIdToSize < ActiveRecord::Migration[5.2]
  def change
    add_column :sizes, :parent_id, :integer, index: true
  end
end
