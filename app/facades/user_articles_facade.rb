class UserArticlesFacade
  def self.user_articles(user_id)
    EpitracService.user_articles(user_id)[:data].map do |article_info|
      UserArticle.new(article_info)
    end
  end
end
