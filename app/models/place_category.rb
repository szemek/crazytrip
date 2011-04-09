class PlaceCategory < ActiveRecord::Base
  has_many :place_category_places
end
