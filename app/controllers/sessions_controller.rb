class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/reg'
    else
      flash[:danger] = 'Invalid email/password combination'
      redirect_to '/login'
    end
  end
  def destroy
    session.clear
    redirect_to '/'
  end
end
