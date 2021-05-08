class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :address
      t.string :photo
      t.string :status, default:"available"
      t.integer :price
      t.integer :rooms
      t.integer :bathrooms
      t.integer :parking_spaces
      t.boolean :for_sale
      t.datetime :available_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
