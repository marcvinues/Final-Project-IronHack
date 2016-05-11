class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
  #   if @current_user.nil?
  #     @current_user = User.find_by(id: session[:user_id])
  #   end
  #     @current_user
  # end
  #this line it's doing the same
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def authorize_user
    unless current_user
      flash[:message] = 'Please log in or register to acces this page'
      redirect_to root_path
    end
  end

  def admin_only
    unless current_user && current_user.role == "admin"
      flash[:message] = "Acces denied. You must be admin to see this page."
      redirect_to root_path
    end
  end
end
