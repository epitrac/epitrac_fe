class UserArticlesController < ApplicationController
  def index  
    @user = User.find(session[:user_id])
    @saved_articles = UserArticleFacade.view_saved(@user.id)
  end


  def create
    @user = User.find(session[:user_id])
    @article = UserArticleFacade.save_to_dashboard(@user.id, params[:article_id])
    redirect_to dashboard_path(params[:user_id])
  end

  def delete 
    @user = User.find(session[:user_id])
    # article_id = UserArticle.find_by(params[:article_id])
    # require 'pry'; binding.pry
    UserArticleFacade.delete_article(params[:id])
    # UserArticleFacade.delete_article(UserArticle.find_by(params[:article_id]))
    
    redirect_to dashboard_path(params[:user_id])

  end
end