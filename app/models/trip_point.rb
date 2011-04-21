class TripPoint < ActiveRecord::Base
  belongs_to :trip
  belongs_to :point
end
