class RemoveScoreFromReviews < ActiveRecord::Migration[5.2]
  def up
    remove_column :reviews, :score
  end

  def down
    add_column :reviews, :score, :integer
  end
end
