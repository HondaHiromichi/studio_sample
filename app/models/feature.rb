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

class Feature < ApplicationRecord
end
