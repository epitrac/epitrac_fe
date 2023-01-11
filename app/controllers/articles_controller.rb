class ArticlesController < ApplicationController
  def index 
    @articles = ArticlesFacade.articles_on_topic(params[:disease])
  end

  # def show 
  #   @user_articles = UserArticleFacade.save_to_dashboard(params[:user_id], params[:article_id])
  #   # @user_articles = EpitracService.save_article(params[:user_id], params[:article_id])
  #   redirect_to dashboard_path(params[:user_id])
  #   # require 'pry'; binding.pry
  # end
end