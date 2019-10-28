class UpdateGossip < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :email, :string
    add_column :users, :first_name, :string
    add_column :users, :age, :integer
    add_column :gossips, :title, :string
  end
end
