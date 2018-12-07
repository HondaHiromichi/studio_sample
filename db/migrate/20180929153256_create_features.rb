class CreateFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :features do |t|
      t.references :user
      t.integer :feature
      t.timestamps
    end
  end
end
