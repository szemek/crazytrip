class User < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email
  validates_presence_of :password_hash
  has_many :traceroutes
  has_and_belongs_to_many :traceroutes
  has_many :points
end
