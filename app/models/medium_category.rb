class MediumCategory < ActiveRecord::Base
  validates_presence_of :name
  has_many :mediums
end
