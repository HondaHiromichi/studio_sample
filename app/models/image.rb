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
  belongs_to :studio, optional: true

  has_attached_file :image,
                    styles: { medium: '300*300>', thumb: '100*100>' },
                    # path: "#{Rails.root}/public/:filename",
                    default_url: '/missing.png'

  validates_attachment_content_type :image,
                                    content_type: /\Aimage\/.*\z/
end
