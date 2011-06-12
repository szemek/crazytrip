# == Schema Information
# Schema version: 20110508231655
#
# Table name: votes
#
#  id         :integer         not null, primary key
#  trip_id    :integer
#  user_id    :integer
#  rating     :integer
#  comment    :string(255)
#  favorite   :boolean
#  created_at :datetime
#  updated_at :datetime
#

class Vote < ActiveRecord::Base

  attr_accessible :rating, :comment

  validates_inclusion_of :rating, :in => 1..10
  validates_presence_of :rating
  validates_presence_of :user_id
  validates_presence_of :trip_id
  belongs_to :user
  belongs_to :trip

  validates :user_id, :uniqueness=>{ :scope=> :trip_id}

end
