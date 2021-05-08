class AdddetailsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :details, :text
  end
end
