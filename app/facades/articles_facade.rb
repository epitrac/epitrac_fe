class ArticlesFacade
  def self.articles_on_topic(disease)
    EpitracService.articles_on_topic(disease)[:data].map do |article_info|
      Article.new(article_info[:attributes])
    end
  end
end
