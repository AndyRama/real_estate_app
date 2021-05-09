class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.string :summary
      t.string :image
      t.text :body
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
