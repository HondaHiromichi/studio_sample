class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :account_name, :string, null: false
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone, :integer
  end
end
