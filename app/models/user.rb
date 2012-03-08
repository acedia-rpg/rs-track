class User < ActiveRecord::Base
	attr_accessible :name, :email, :password, :password_confirmation
	has_secure_password
	
	validates :name, presence: true, length: {maximum: 20}, uniqueness: { case_sensitive: false }
	validates :email, presence: true, uniqueness: { case_sensitive: false }
	validates :password, :on => :create, length: { minimum: 6 }
	
end
