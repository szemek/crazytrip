class Place < ActiveRecord::Base
  has_many :mediums
  has_many :place_category_places
  belongs_to :point
end
