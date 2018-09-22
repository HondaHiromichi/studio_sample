class CreateAddValues < ActiveRecord::Migration[5.2]
  def change
    create_table :add_values do |t|
      t.integer :studio_id
      t.integer :feature_id
      t.timestamps
    end
  end
end
