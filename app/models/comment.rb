class Comment < ActiveRecord::Base

	attr_accessible :body, :parent_comment_id, :link_id

	belongs_to :link, :inverse_of => :comments
	has_many :child_comments, :class_name => "Comment",
							:foreign_key => "parent_comment_id",
							:inverse_of => :parent_comment
	belongs_to :parent_comment, :class_name => "Comment", :inverse_of => :child_comments






end