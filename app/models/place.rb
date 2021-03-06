# == Schema Information
# Schema version: 20110508231655
#
# Table name: places
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :text
#  minutes     :integer         default(0)
#  point_id    :integer
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Place < ActiveRecord::Base
  validates :name,  :presence => true
  validates :point_id,  :presence => true
  validates :minutes,  :numericality => { :greater_than_or_equal_to=> 0 }

  belongs_to :point, :dependent => :destroy
  belongs_to :user
  has_many :photos, :dependent => :destroy
  has_and_belongs_to_many :place_categories

  scope :search_name, lambda { |name, user_id|
    where('name LIKE ? AND (user_id = ? OR user_id IS NULL)', '%' + name + '%', user_id)
  }

  scope :public, lambda {
    where('user_id IS NULL')
  }

end
