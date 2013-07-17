module LinksHelper

	def comments_by_parent
		hash = {}
		self.comments.each do |comment|
			if hash[comment.parent_comment_id]
				hash[comment.parent_comment_id] << comment
			else
				hash[comment.parent_comment_id] = [comment]
			end
		end
		hash
	end

end
