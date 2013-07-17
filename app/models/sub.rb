class Sub < ActiveRecord::Base

	attr_accessible :name, :mod_id, :links_attributes

	belongs_to :mod, :class_name => "User", :inverse_of => :sub

	has_many :shares, :inverse_of => :sub

	has_many  :links, :through => :shares

	accepts_nested_attributes_for :links, :reject_if => :all_blank



end