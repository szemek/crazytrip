# == Schema Information
# Schema version: 20110508231655
#
# Table name: Photos
#
#  id                 :integer         not null, primary key
#  data               :binary
#  Photo_category_id :integer
#  created_at         :datetime
#  updated_at         :datetime
#

class Photo < ActiveRecord::Base
  validates_presence_of :data
  validates_presence_of :place_id
  validates_presence_of :photo_category_id
  belongs_to :place
  belongs_to :photo_category

end
