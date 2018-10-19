class RenameUserIdColumnToFeatures < ActiveRecord::Migration[5.2]
  def change
    rename_column :features, :user_id, :studio_id
  end
end
