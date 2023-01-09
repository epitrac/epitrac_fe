class UsersController < ApplicationController
  def show
    @user = User.find(session[:user_id])
  end

  def destroy
    user = User.find(session[:user_id])
    user.destroy
    session.destroy
    redirect_to '/'
  end

  def edit
    @user = User.find(session[:user_id])
  end

  def update
    user = User.find(session[:user_id])
    user.update(state: params[:state])

    redirect_to '/dashboard'
  end
end