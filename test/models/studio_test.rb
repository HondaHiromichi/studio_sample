# == Schema Information
#
# Table name: studios
#
#  id             :bigint(8)        not null, primary key
#  name           :string(255)      not null
#  phone          :integer          not null
#  area           :string(255)
#  station        :string(255)
#  information    :text(65535)
#  lowest_price   :integer
#  price          :string(255)
#  business_hours :string(255)
#  room           :string(255)
#  url            :string(255)
#  address        :string(255)
#  sorroundings   :string(255)
#  etc            :text(65535)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class StudioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
