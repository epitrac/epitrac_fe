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
              :id,
              :journal

  def initialize(data)
    @article_id = data[:attributes][:article_id]
    @author = data[:attributes][:author]
    @title = data[:attributes][:title]
    @year = data[:attributes][:year]
    @date = data[:attributes][:date]
    @isbn_issn = data[:attributes][:isbn_issn]
    @keywords = data[:attributes][:keywords]
    @abstract = data[:attributes][:abstract]
    @url = data[:attributes][:url]
    @doi = data[:attributes][:doi]
    @id = data[:id]
    @journal = data[:attributes][:journal]
  end
end
