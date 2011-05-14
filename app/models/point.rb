# == Schema Information
# Schema version: 20110508231655
#
# Table name: points
#
#  id         :integer         not null, primary key
#  x          :decimal(, )
#  y          :decimal(, )
#  created_at :datetime
#  updated_at :datetime
#

class Point < ActiveRecord::Base

  validates :x,	:presence => true,
  							:numericality => { :greater_than_or_equal_to=> -90, :less_than_or_equal_to => 90}
  validates :y,	:presence => true,
  							:numericality => { :greater_than_or_equal_to=> -90, :less_than_or_equal_to => 180}
  has_one :place
  has_many :trip_points
  has_many :trips, :through=> :trip_points
  
end
