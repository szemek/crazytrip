# == Schema Information
# Schema version: 20110508231655
#
# Table name: places
#
#  id             :integer         not null, primary key
#  name           :string(255)
#  description    :text
#  minutes        :integer         default(0)
#  public_request :boolean
#  point_id       :integer
#  user_id        :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class Place < ActiveRecord::Base

	attr_accessible :name, :description, :minutes, :public_request, :point

  validates :name,	:presence => true
  validates :point_id,	:presence => true  
  validates :minutes,	:numericality => { :greater_than_or_equal_to=> 0 }

  belongs_to :point
  belongs_to :user
  has_many :mediums
  has_and_belongs_to_many :place_categories
  
  def self.search(search)
  if search
    where(:user_id=>nil).find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
 end


  
end
