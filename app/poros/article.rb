class Article
  attr_reader :id,
              :author,
              :title,
              :year,
              :date,
              :isbn_issn,
              :keywords,
              :abstract,
              :url,
              :doi,
              :journal

  def initialize(attributes)
    @id = attributes[:article_id]
    @author = attributes[:author]
    @title = attributes[:title]
    @year = attributes[:year]
    @date = attributes[:date]
    @isbn_issn = attributes[:isbn_issn]
    @keywords = attributes[:keywords]
    @abstract = attributes[:abstract]
    @url = attributes[:url]
    @doi = attributes[:doi]
    @journal = attributes[:journal]
  end
end