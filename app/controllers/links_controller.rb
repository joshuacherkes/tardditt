class LinksController < ApplicationController 
	
	include LinksHelper

	def new
		@link = Link.new
		render :new
	end

	def create
		@link = Link.new(params[:link])
		if @link.save!
			redirect_to link_url(@link)
		else
			flash.now[:errors] = "woops! something went wrong, try again."
			redirect_to new_link_url
		end
	end

	def show
		@link = Link.find(params[:id])
	end


end