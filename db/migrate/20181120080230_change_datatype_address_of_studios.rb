class ChangeDatatypeAddressOfStudios < ActiveRecord::Migration[5.2]
  def change
    change_column :studios, :latitude, :float, :limit => 53
    change_column :studios, :longitude, :float, :limit => 53
  end
end
