class ArticlesController < ApplicationController
  def index 
    @articles = ArticlesFacade.articles_on_topic(params[:disease])
  end
end