class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.references :studio
      t.text :path
      t.integer :sequence
      t.timestamps
    end
  end
end
