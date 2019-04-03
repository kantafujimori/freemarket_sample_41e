class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :first_name, null: :false
      t.string :last_name, null: :false
      t.integer :postal_code, null: :false
      t.string :prefecture, null: :false
      t.string :municipality, null: :false
      t.integer :address_number, null: :false
      t.string :building_name
      t.string :first_name_phon, null: :false
      t.string :last_name_phon, null: :false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
