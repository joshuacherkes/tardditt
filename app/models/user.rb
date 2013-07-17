class User < ActiveRecord::Base 
	attr_accessible :username, :password, :token

	validates :username, :password, :presence => true

	has_many :subs 
end