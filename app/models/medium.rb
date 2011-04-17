class Medium < ActiveRecord::Base
  validates_presence_of :data
  validates_presence_of :place_id
  validates_presence_of :medium_category_id
  belongs_to :place
  belongs_to :medium_category
end
