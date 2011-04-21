class User < ActiveRecord::Base
	attr_accessible :last_name, :first_name, :email, :password, :password_confirmation
  
	attr_accessor :password
	before_save :encrypt_password

  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
  validates_length_of :email, :maximum => 100
  validates_format_of :email, :with => EMAIL_REGEX
  validates_presence_of :email
	validates_uniqueness_of :email
	validates_length_of :password, :minimum => 5
	validates_confirmation_of :password
	validates_presence_of :password, :on => :create
	validates_presence_of :first_name
	validates_presence_of :last_name
	has_many :trips
	has_many :voted_trips, :through => :votes,  :class_name => "Trip"
	has_many :votes
	has_many :places
	
	def encrypt_password
		if password.present?
			self.password_salt = BCrypt::Engine.generate_salt
			self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
		end
	end
	
	def self.authenticate(email, password)
		user = find_by_email(email)
		if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
			user
		else
			nil
		end
	end
  
end
