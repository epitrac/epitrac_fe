require 'rails_helper'

RSpec.describe UserArticle do
  it 'exists' do
    data = {
            "id": "3",
            "type": "article",
            "attributes": {
                "article_id": "30",
                "author": "Zorrilla, C. D. G. G., I., Garcia Fragoso, L., De La Vega, A.",
                "title": "*Zika virus infection in pregnancy: Maternal, fetal, and neonatal considerations",
                "year": "2017",
                "date": "16-12",
                "isbn_issn": "0022-1899",
                "keywords": "Zikv:Zika in pregnancy:pregnancy",
                "abstract": "An infection with the Zika virus (ZIKV) is usually mild, with nonspecific symptoms and most often asymptomatic.",
                "url": "https://www.ncbi.nlm.nih.gov/pubmed/29267916",
                "doi": "10.1093/infdis/jix448"
            }
        }

      user_article = UserArticle.new(data)

      expect(user_article).to be_instance_of(UserArticle)
      expect(user_article.author).to eq("Zorrilla, C. D. G. G., I., Garcia Fragoso, L., De La Vega, A.")
      expect(user_article.title).to eq("*Zika virus infection in pregnancy: Maternal, fetal, and neonatal considerations")
      expect(user_article.year).to eq("2017")
      expect(user_article.date).to eq("16-12")
      expect(user_article.isbn_issn).to eq("0022-1899")
      expect(user_article.keywords).to eq("Zikv:Zika in pregnancy:pregnancy")
      expect(user_article.abstract).to eq("An infection with the Zika virus (ZIKV) is usually mild, with nonspecific symptoms and most often asymptomatic.")
      expect(user_article.url).to eq("https://www.ncbi.nlm.nih.gov/pubmed/29267916")
      expect(user_article.doi).to eq("10.1093/infdis/jix448")
      expect(user_article.id).to eq("3")
      expect(user_article.article_id).to eq("30")
  end
end
