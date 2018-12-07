class AddAddressStudios < ActiveRecord::Migration[5.2]
  def up
    add_column :studios, :latitude, :float
    add_column :studios, :longitude, :float
  end

  def down
    remove_column :studios, :latitude, :float
    remove_column :studios, :longitude, :float
  end
end
