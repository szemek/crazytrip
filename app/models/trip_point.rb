class TripPoint < ActiveRecord::Base
		validates :trip_id, :uniqueness=>{ :scope=> :point_id}
		validates_presence_of :point_id
		validates_presence_of :trip_id
  	belongs_to :trip
  	belongs_to :point
end
