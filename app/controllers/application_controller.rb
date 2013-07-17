class ApplicationController < ActionController::Base
  protect_from_forgery
  require 'bcrypt'

  include ApplicationHelper


  def authenticate_user
  	redirect_to new_session_url unless current_user
  end
end
	