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

  enum feature: { rec: 0, near: 1, parking: 2, rental: 3, pack: 4, web: 5, convenience: 6,
                  restaurant: 7, break: 8, smoking: 9, eating: 10, piano: 11, live: 12}
end
