class UserArticlesController < ApplicationController

  def create
    @user = User.find(session[:user_id])
    @article = UserArticleFacade.save_to_dashboard(@user.id, params[:article_id])
    redirect_to dashboard_path(params[:user_id])
  end

  def delete 
    @user = User.find(session[:user_id])
    UserArticleFacade.delete_article(params[:id])    
    flash[:notice] = "Article was successfully deleted from dashboard"
    redirect_to dashboard_path(params[:user_id])
  end
end