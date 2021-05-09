class AddImageExtToProperties < ActiveRecord::Migration[6.1]
  def change
    add_column :properties, :image_ext, :string
  end
end
