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

  attr_accessible :name, :description
  validates :name, :presence => true

  has_many :trip_points, :dependent => :destroy
  has_many :points, :through => :trip_points
  has_many :votes, :dependent => :destroy
  belongs_to :user
  accepts_nested_attributes_for :trip_points, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true

  scope :search_name, lambda { |name|
    where('name LIKE ?', '%' + name + '%')
  }

  scope :public, lambda {
    where(:public => true)
  }

end
