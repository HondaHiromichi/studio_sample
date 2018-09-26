class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.integer :studio_id
      t.text :path
      t.integer :sequence
      t.timestamps
    end
  end
end
