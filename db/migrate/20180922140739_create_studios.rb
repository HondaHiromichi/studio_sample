class CreateStudios < ActiveRecord::Migration[5.2]
  def change
    create_table :studios do |t|
      t.string :name, null: false
      t.integer :phone, null: false
      t.string :area
      t.string :station
      t.text :information
      t.integer :lowest_price
      t.string :price
      t.string :business_hours
      t.string :room
      t.string :url
      t.string :address
      t.string :sorroundings
      t.text :etc
      t.timestamps
    end
  end
end
