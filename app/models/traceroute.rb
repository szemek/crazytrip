class Traceroute < ActiveRecord::Base
  has_many :traceroute_points
  has_many :traceroute_users
  belongs_to :user
end
