class UserArticle 
  attr_reader :id, :user_id, :article_id
  def initialize(attributes)
    @id = [:id]
    @user_id = attributes[:user_id].to_i
    @article_id = attributes[:article_id]
  end
end