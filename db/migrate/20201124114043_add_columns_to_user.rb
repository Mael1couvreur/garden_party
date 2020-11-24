class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :address, :string
    add_column :users, :score, :integer
  end
end
