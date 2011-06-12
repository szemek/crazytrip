# == Schema Information
# Schema version: 20110508231655
#
# Table name: Photo_categories
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class PhotoCategory < ActiveRecord::Base
  validates_presence_of :name
  has_many :photos
end
