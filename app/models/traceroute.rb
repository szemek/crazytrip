class Traceroute < ActiveRecord::Base
  validates_presence_of :name
  has_many :traceroute_points
  has_and_belongs_to_many :users
  belongs_to :user
end
