class AddImageIntToProperties < ActiveRecord::Migration[6.1]
  def change
    add_column :properties, :image_int, :string
  end
end
