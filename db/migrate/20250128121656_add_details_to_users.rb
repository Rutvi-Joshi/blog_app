class AddDetailsToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :avatar, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :country, :string
    add_column :users, :phone, :string
    add_column :users, :gender, :string
  end
end
