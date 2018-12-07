# == Schema Information
#
# Table name: reviews
#
#  id         :bigint(8)        not null, primary key
#  user_id    :bigint(8)
#  studio_id  :bigint(8)
#  score      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Review < ApplicationRecord
  belongs_to :user
  belongs_to :studio, counter_cache: :reviews_count
  validates :user_id, presence: true
  validates :studio_id, presence: true
  validates :user_id, :uniqueness => {:scope => :studio_id}
end
