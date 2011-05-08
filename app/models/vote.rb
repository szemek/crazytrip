class Vote < ActiveRecord::Base
  validates_inclusion_of :rating, :in => 1..10
  validates_presence_of :rating
  validates_presence_of :user_id
  validates_presence_of :trip_id
  belongs_to :user
  belongs_to :trip
end
