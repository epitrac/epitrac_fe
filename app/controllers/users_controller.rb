class UsersController < ApplicationController
  def show
    @user = User.find(session[:user_id])
  end

  def destroy
    user = User.find(session[:user_id])
    user.destroy
    redirect_to '/'
  end
end