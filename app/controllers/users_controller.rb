class UsersController < ApplicationController
  def show
    if current_user
      @user = User.find(session[:user_id])
      @saved_articles = UserArticleFacade.view_saved(session[:user_id])
    else
      redirect_to root_path
      flash[:error] = "Please login to view your dashboard."
    end
  end

  def destroy
    user = User.find(session[:user_id])
    user.destroy
    session.destroy
    redirect_to '/'
  end

  def edit
    if current_user
      @user = User.find(session[:user_id])
    else
      redirect_to root_path
      flash[:error] = "Please login to edit your state."
    end
  end

  def update
    user = User.find(session[:user_id])
    user.update(state: params[:state])

    redirect_to '/dashboard'
  end
end