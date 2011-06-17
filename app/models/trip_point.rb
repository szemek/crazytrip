# == Schema Information
# Schema version: 20110508231655
#
# Table name: trip_points
#
#  id         :integer         not null, primary key
#  trip_id    :integer
#  point_id   :integer
#  date       :datetime
#  order      :integer
#  created_at :datetime
#  updated_at :datetime
#

class TripPoint < ActiveRecord::Base

    attr_accessible :date, :order, :trip_id

		validates :trip_id, :uniqueness=>{ :scope=> :point_id}
		validates_presence_of :point_id
		validates_presence_of :trip_id
  	belongs_to :trip
  	belongs_to :point, :dependent => :destroy
end
