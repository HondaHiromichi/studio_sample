class AddColumnStudios < ActiveRecord::Migration[5.2]
  def up
    add_column :studios, :reviews_count, :integer
  end

  def down
    remove_column :studios, :reviews_count, :integer
  end
end
