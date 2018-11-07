class AddColumnToStudios < ActiveRecord::Migration[5.2]
  def change
    add_column :studios, :post_flag, :boolean, default: false, null: false
  end
end
