class UsersController < ApplicationController
	before_filter :authenticate_user, :only => [:show]

	def new
	end

	def create
		@user = User.new(params[:user])
		session_token = SecureRandom.urlsafe_base64(16)
		@user.token = session_token
		@user.password = BCrypt::Password.create(params[:user][:password])
		if @user.save
			session[:token] = session_token
			redirect_to user_url(@user)
		else
			flash.now[:errors] = "failed to create account"
			render :new
		end
	end


	def show
		@user = User.find(params[:id])
	end



end