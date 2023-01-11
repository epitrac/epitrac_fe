class UserArticlesController < ApplicationController
  def destroy
    # require "pry"; binding.pry
    EpitracService.delete_user_article(params[:id])
    redirect_to '/dashboard'
  end
  def create
    # require "pry"; binding.pry
    EpitracService.create_user_article(session[:user_id], params[:id])
    redirect_to '/dashboard'
  end
end
