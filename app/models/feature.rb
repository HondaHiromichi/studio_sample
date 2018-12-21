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
  belongs_to :studio

  enum feature: { rec: 2, near: 3, parking: 4, rental: 5, pack: 6, web: 7, convenience: 8,
                  restaurant: 9, break: 10, smoking: 11, eating: 12, piano: 13, live: 14}
end
