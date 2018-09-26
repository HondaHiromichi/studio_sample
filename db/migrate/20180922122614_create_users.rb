class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :account_name, null: false
      t.string :first_name
      t.string :last_name
      t.string :mail_address, null: false
      t.string :password, null: false
      t.integer :phone
      t.integer :role, default: 0
      t.timestamps
    end
  end
end
