# == Schema Information
# Schema version: 20110508231655
#
# Table name: users
#
#  id            :integer         not null, primary key
#  first_name    :string(255)
#  last_name     :string(255)
#  admin         :boolean
#  email         :string(255)
#  password_hash :string(255)
#  password_salt :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

require 'bcrypt'
class User < ActiveRecord::Base

  attr_accessor :password

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :first_name,  :presence => true,
                          :length   => { :maximum => 50 }
  validates :last_name,  :presence => true,
                        :length   => { :maximum => 50 }
  validates :email,  :presence => true,
                    :format   => { :with => email_regex },
                    :uniqueness => { :case_sensitive => false },
                    :length   => { :maximum => 50 }
  validates :password,   :presence     => {:on => :create},
                         :confirmation => true,
                         :length       => {:within => 6..40 , :allow_nil => true}

  before_save :encrypt_password
  before_destroy :delete_author_of_public_trips

   has_many :trips, :dependent => :destroy
  has_many :places, :dependent => :destroy
  has_many :votes, :dependent => :destroy

  def has_password?(submitted_password)
    password_hash == encrypt(submitted_password)
  end

  def self.authenticate(email, submitted_password)
    user = find_by_email(email)
    return nil  if user.nil?
    return user if user.has_password?(submitted_password)
  end

  scope :search_last_name, lambda { |last_name|
    where('last_name LIKE ?', '%' + last_name + '%')
  }

  private

    def encrypt_password
      if !password.nil?
        self.password_salt = BCrypt::Engine.generate_salt if new_record?
        self.password_hash = encrypt(password)
      end
    end

    def encrypt(string)
      BCrypt::Engine.hash_secret(string, password_salt)
    end

    def delete_author_of_public_trips
      trips.public.all.each { |trip|
        trip.user=nil;
        trip.save
      }
    end

end

