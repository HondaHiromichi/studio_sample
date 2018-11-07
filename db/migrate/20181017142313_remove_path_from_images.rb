class RemovePathFromImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :images, :path, :text
  end
end
