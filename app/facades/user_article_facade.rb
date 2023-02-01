class UserArticleFacade
  def self.save_to_dashboard(user_id, article_id)
    EpitracService.save_article(user_id, article_id)[:data]
  end

  def self.user_articles(user_id)
    EpitracService.return_saved_articles(user_id)[:data].map do |article_info|
      UserArticle.new(article_info)
    end
  end

  def self.delete_article(article_id)
    EpitracService.delete(article_id)
  end
end
