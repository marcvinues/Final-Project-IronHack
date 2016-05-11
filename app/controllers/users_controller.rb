require 'pry'
class UsersController < ApplicationController
  before_action :authorize_user, only: [:show]
  before_action :admin_only, only: [:index]

def home
  if current_user.nil?

  else
    @name = current_user.username
  end
end

def index
  @users = User.all
  # binding.pry
end

def reg

end

def new
end

def show
end

def create
  user = User.new(user_params)
  if user.save
    redirect_to '/'
  else
    redirect_to '/signup'
  end
end

private

def user_params
  params.require(:user).permit(:username, :email, :password, :password_confirmation)
end

end
