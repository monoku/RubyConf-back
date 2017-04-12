class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user
  before_action :verify_admin_user


  def verify_admin_user
    if params["controller"].include?("admin")
      if current_user.nil?
        flash[:error] = "You must be logged in as Admin"
        redirect_to new_sessions_path
      end
    end
  end

  def current_user
    @current_user ||= AdminUser.find_by(id: session[:user_id])
  end
end
