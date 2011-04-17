class User < ActiveRecord::Base
  validates_presence_of :firstname
  validates_presence_of :lastname
  validates_presence_of :email
  validates_presence_of :password
  has_many :traceroutes
  has_and_belongs_to_many :traceroutes
  has_many :points
end
