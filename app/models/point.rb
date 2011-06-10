# == Schema Information
# Schema version: 20110508231655
#
# Table name: points
#
#  id         :integer         not null, primary key
#  x          :decimal(15, 10)
#  y          :decimal(15, 10)
#  created_at :datetime
#  updated_at :datetime
#

class Point < ActiveRecord::Base

  attr_accessible :x, :y

  validates :x,	:presence => true,
  							:numericality => { :greater_than_or_equal_to=> -90, :less_than_or_equal_to => 90}
  validates :y,	:presence => true,
  							:numericality => { :greater_than_or_equal_to=> -90, :less_than_or_equal_to => 180}
  has_one :place
  has_many :trip_points, :dependent => :destroy
  has_many :trips, :through=> :trip_points
  
end
