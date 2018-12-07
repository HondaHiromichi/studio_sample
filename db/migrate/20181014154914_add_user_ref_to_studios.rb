class AddUserRefToStudios < ActiveRecord::Migration[5.2]
  def change
    add_reference :studios, :user
  end
end
