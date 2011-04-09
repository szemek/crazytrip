class Medium < ActiveRecord::Base
  belongs_to :place
  belongs_to :medium_category
end
