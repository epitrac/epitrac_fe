class UserArticlesController < ApplicationController
  def index  
    @user = User.find(session[:user_id])
    @saved_articles = UserArticleFacade.view_saved(@user.id)
    # @user_articles = EpitracService.return_saved_articles(params[:user_id])[:data]
  end
  # def show 
  #   @user_articles = UserArticleFacade.save_to_dashboard(params[:user_id], params[:article_id])
  #   # @user_articles = EpitracService.save_article(params[:user_id], params[:article_id])
  #   require 'pry'; binding.pry
  # end

  def create
    UserArticleFacade.save_to_dashboard(params[:user_id], params[:article_id])
    # @user_article = UserArticle.new(user_id: params[:user_id], article_id: params[:article_id])
    redirect_to dashboard_path(params[:user_id])
  end

  # private 
  # def user_article_params
  #   params.permit(:id, :article_id, :user_id, :authenticity_token)
  # end
end