class Point < ActiveRecord::Base
  has_many :traceroute_points
  belongs_to :user
  has_one :place
end
