class Point < ActiveRecord::Base
  validates_presence_of :x
  validates_presence_of :y
  has_many :trip_points
  belongs_to :user
  has_one :place
end
