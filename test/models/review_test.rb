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

require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
