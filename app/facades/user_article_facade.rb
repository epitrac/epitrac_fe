class UserArticleFacade 
  def self.save_to_dashboard(user_id, article_id)
    UserArticle.new(EpitracService.save_article(user_id, article_id))
  end

  def self.view_saved(user_id)
    # require 'pry'; binding.pry
    EpitracService.return_saved_articles(user_id)[:data]  
  end
end