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

class Studio < ApplicationRecord
  belongs_to :user
  has_many :images, dependent: :destroy
  has_many :features, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  accepts_nested_attributes_for :features
  validates :user_id, presence: true
  validates :name, presence: true
  validates :phone, presence: true
  # validates :image_content_type, acceptance: true
end
