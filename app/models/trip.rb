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

  scope :search_name, lambda { |name, user_id|
    where('name LIKE ? AND (user_id = ? OR public)', '%' + name + '%', user_id)
  }

  scope :public, lambda {
    where(:public => true)
  }
  
  scope :private, lambda {
    where(:public => false)
  }
  
  def rating
    @vote = Vote.find_by_sql ['SELECT AVG("rating") AS rate FROM "votes" WHERE "votes".trip_id = ?', id]
    @vote[0].rate
  end

end
