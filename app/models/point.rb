# == Schema Information
# Schema version: 20110508231655
#
# Table name: points
#
#  id         :integer         not null, primary key
#  lat        :decimal(15, 10) default(50.061933)
#  lng        :decimal(15, 10) default(19.937611)
#  created_at :datetime
#  updated_at :datetime
#

class Point < ActiveRecord::Base
  validates :lat,  :presence => true,
                :numericality => { :greater_than_or_equal_to=> -90, :less_than_or_equal_to => 90}
  validates :lng, :presence => true,
                :numericality => { :greater_than_or_equal_to=> -180, :less_than_or_equal_to => 180}
  has_one :place
  has_many :trip_points, :dependent => :destroy
  has_many :trips, :through=> :trip_points

end
