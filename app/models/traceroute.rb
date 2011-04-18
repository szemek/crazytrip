class Traceroute < ActiveRecord::Base
	attr_accessible :name, :description, :user_id
	validates_presence_of :name
	has_many :traceroute_points
	has_and_belongs_to_many :participants, :class_name => "User"
	belongs_to :user
end
