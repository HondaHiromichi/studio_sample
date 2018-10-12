# == Schema Information
#
# Table name: images
#
#  id         :bigint(8)        not null, primary key
#  studio_id  :bigint(8)
#  path       :text(65535)
#  sequence   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Image < ApplicationRecord
end
