class ChangeReviewsCountOfStudios < ActiveRecord::Migration[5.2]
  def change
    change_column :studios, :reviews_count, :integer, default: 0
  end
end
