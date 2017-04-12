class SessionsController < ApplicationController
  def new
  end

  def create
    user = AdminUser.find_by(email: user_params[:email])
    begin
      if user.try(:authenticate, user_params[:password])
        session[:user_id] = user.id
        redirect_to admin_root_path
      else
        flash[:error] = "Email and password doesn't match"
        render :new
      end
    rescue
      flash[:error] = "Error logging user"
    end
  end

  def destroy
    session['user_id'] = nil
    redirect_to new_sessions_path
  end

  def user_params
    params.required(:sessions).permit(:email, :password)
  end
end
