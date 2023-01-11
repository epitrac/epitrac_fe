class UserArticleFacade 
  def self.save_to_dashboard(user_id, article_id)
    EpitracService.save_article(user_id, article_id)[:data]
  end

  def self.view_saved(user_id)
    EpitracService.return_saved_articles(user_id)[:data]  
  end

  def self.delete_article(article_id)
    EpitracService.delete(article_id)
  end
end
