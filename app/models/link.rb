class Link < ActiveRecord::Base
	include LinksHelper
	attr_accessible :url, :body, :title, :sub_ids

	has_many :shares, :inverse_of => :link
	has_many :subs, :through => :shares #:inverse_of => :link
	has_many :comments, :inverse_of => :link 

end

