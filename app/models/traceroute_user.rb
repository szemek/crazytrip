class TracerouteUser < ActiveRecord::Base
  belongs_to :traceroute
  belongs_to :user
end
