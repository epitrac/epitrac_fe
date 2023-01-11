class ArticlesController < ApplicationController
  def index 
    @disease = DiseaseInfoFacade.disease_info(params[:disease]).disease
    @articles = ArticlesFacade.articles_on_topic(@disease)
  end
end