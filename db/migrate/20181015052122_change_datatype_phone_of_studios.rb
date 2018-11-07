class ChangeDatatypePhoneOfStudios < ActiveRecord::Migration[5.2]
  def change
    change_column :studios, :phone, :string
  end
end
