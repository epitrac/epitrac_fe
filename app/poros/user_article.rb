class UserArticle
  attr_reader :article_id,
              :author,
              :title,
              :year,
              :date,
              :isbn_issn,
              :keywords,
              :abstract,
              :url,
              :doi,
              :id

  def initialize(article_info)
    # require "pry"; binding.pry
    @id = article_info[:id]
    @article_id = article_info[:attributes][:article_id]
    @author = article_info[:attributes][:author]
    @title = article_info[:attributes][:title]
    @year = article_info[:attributes][:year]
    @date = article_info[:attributes][:date]
    @isbn_issn = article_info[:attributes][:isbn_issn]
    @keywords = article_info[:attributes][:keywords]
    @abstract = article_info[:attributes][:abstract]
    @url = article_info[:attributes][:url]
    @doi = article_info[:attributes][:doi]
  end
end
