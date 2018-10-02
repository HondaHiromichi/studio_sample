# == Schema Information
#
# Table name: features
#
#  id         :bigint(8)        not null, primary key
#  user_id    :bigint(8)
#  feature    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class FeatureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
