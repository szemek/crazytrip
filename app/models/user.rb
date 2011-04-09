class User < ActiveRecord::Base
  has_many :traceroutes
  has_many :traceroute_users
  has_many :points
end
