# == Schema Information
# Schema version: 20110508231655
#
# Table name: media
#
#  id                 :integer         not null, primary key
#  data               :binary
#  medium_category_id :integer
#  created_at         :datetime
#  updated_at         :datetime
#

class Medium < ActiveRecord::Base
  validates_presence_of :data
  validates_presence_of :place_id
  validates_presence_of :medium_category_id
  belongs_to :place
  belongs_to :medium_category

  def uploaded_file=(incoming_file)
        self.data = incoming_file.read
    end
end
