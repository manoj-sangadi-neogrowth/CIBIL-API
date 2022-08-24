class UserController < ApplicationController
  def index
    users = user.all 
    render json: users
  end

  def new
    user = User.new()
    render json: user
  end

  def create
    user = User.create(user_params)
    if user.save
      render json: user
    else
      render json: {"error": "couldn't be able to save the user"}
    end
    
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
