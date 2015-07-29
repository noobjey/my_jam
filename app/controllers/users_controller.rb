class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)
    flash[:new_user] = user.username
    redirect_to songs_path
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
