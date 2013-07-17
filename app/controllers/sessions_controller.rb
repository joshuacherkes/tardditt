class SessionsController < ActionController::Base


def new
	render :new
end

def create
	#first get a user
	@user = User.find_by_username(params[:user][:username])
	if @user.nil?
		flash.now[:errors] = "Unable to find such user"
		render :new
	elsif !(BCrypt::Password.new(@user.password)== params[:user][:password])
		flash.now[:errors] = "Invalid Username/Password"
		render :new
	else
		@user.token = SecureRandom.urlsafe_base64(16)
		@user.save!
		session[:token] = @user.token
		redirect_to user_url(@user)
	end
end



def destroy
	session[:token] = nil
	redirect_to new_session_url
end




end