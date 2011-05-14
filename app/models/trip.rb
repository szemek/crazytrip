# == Schema Information
# Schema version: 20110508231655
#
# Table name: trips
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  public      :boolean
#  description :text
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Trip < ActiveRecord::Base

  attr_accessible :name, :description, :public
  validates :name, :presence => true

  has_many :trip_points
  accepts_nested_attributes_for :trip_points, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
  has_many :points, :through=> :trip_points
  has_many :votes
  has_many :voters, :through => :votes,  :class_name => "User"
  belongs_to :user

def self.search(search)
  if search
    where(:public=>true).find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end

def places
	points.each do |point|
		Places.where(:point_id=>point.id)
	end
end

end
