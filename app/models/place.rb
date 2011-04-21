class Place < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :point_id
  validates_presence_of :public_request
  validates_numericality_of :minutes, :greater_than_or_equal_to=> 0
  has_many :mediums
  has_and_belongs_to_many :place_categories
  belongs_to :point
  belongs_to :user
end
