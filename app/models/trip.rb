class Trip < ActiveRecord::Base
	attr_accessible :name, :description, :user_id
	validates_presence_of :name
	has_many :trip_points
	has_many :points, :through=> :trip_points
	has_many :votes
	has_many :voters, :through => :votes,  :class_name => "User"
	belongs_to :user
end
