class Vote < ActiveRecord::Base
		validates_inclusion_of :rating, :in=>0..10
		validates_presence_of :user_id
		validates_presence_of :trip_id
		validates :trip_id, :uniqueness=>{ :scope=> :user_id}
  	belongs_to :trip
  	belongs_to :user 
end
