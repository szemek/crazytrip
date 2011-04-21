class Point < ActiveRecord::Base
  validates_presence_of :x
  validates_presence_of :y
  validates_numericality_of :x, :greater_than_or_equal_to=> -90, :less_than_or_equal_to => 90
  validates_numericality_of :y, :greater_than_or_equal_to => -180, :less_than_or_equal_to => 180
  has_many :trip_points
  has_many :trips, :through=> :trip_points
  belongs_to :user
  has_one :place
end
