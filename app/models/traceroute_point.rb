class TraceroutePoint < ActiveRecord::Base
  belongs_to :traceroute
  belongs_to :point
end
