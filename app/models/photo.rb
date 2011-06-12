# == Schema Information
# Schema version: 20110508231655
#
# Table name: photos
#
#  id         :integer         not null, primary key
#  data       :binary
#  type       :string(255)
#  place_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Photo < ActiveRecord::Base
  validates_presence_of :data
  validates_presence_of :place_id
  validates_presence_of :file_type
  belongs_to :place
end
