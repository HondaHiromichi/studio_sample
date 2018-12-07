class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :user
      t.references :studio
      t.integer :score
      t.timestamps
    end
  end
end
