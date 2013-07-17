class SubsController < ApplicationController 
	before_filter :authenticate_user,  :except => [:show]

	def new
		@sub = Sub.new
	end


	def create
		@sub = Sub.new
		
		if @sub.save
			@sub.update_attributes(params[:sub])
			redirect_to sub_url(@sub)
		else
			redirect_to new_subs_url
		end
	end


	def edit
		@sub = Sub.find(params[:id])
		if current_user.id == @sub.mod_id
			render :edit
		else
			flash.now[:errors] = "You are not authorized to edit this sub"
			redirect_to new_session_url
		end
	end

	def update
		@sub = Sub.find(params[:id])
		@sub.update_attributes(params[:sub])
		redirect_to sub_url(@sub)
	end


	def show
		@sub = Sub.find(params[:id])
	end







end