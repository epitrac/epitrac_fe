class UserArticleFacade 
  def self.save_to_dashboard(user_id, article_id)
    EpitracService.save_article(user_id, article_id)[:data]
  end

  def self.view_saved(user_id)
    # require 'pry'; binding.pry
    EpitracService.return_saved_articles(user_id)[:data]  
  end
end
# "https://epitrac-be.herokuapp.com/api/v1/user_articles?user_id=#{session[:user_id]}&article_id=#{article.id}"