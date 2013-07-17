class CommentsController < ApplicationController 
	def new
	end

	def create
		@comment = Comment.new(params[:comment])
		if @comment.save
			redirect_to comment_url(@comment.parent_comment.id)
		else
			flash.now[:errors] = "Could not comment, try again"
			redirect_to comment_url(@comment.parent_comment.id)
		end
	end

	def show
		@comment = Comment.find(params[:id])
	end


end