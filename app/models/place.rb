class Place < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :point_id
  has_many :mediums
  has_and_belongs_to_many :place_categories
  belongs_to :point
end
