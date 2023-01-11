# require 'rails_helper'
#
# RSpec.describe UserArticleFacade do
#   describe 'class methods', :vcr do
#     describe '#user_articles' do
#       it 'returns articles on given topic' do
#         expect(UserArticlesFacade.user_articles("Anthrax")).to be_an(Array)
#         expect(ArticlesFacade.articles_on_topic("Anthrax")[0]).to be_instance_of(Article)
#
#         article = ArticlesFacade.articles_on_topic("Anthrax")[0]
#
#         expect(article.abstract).to include("The Active Anthrax Detect (AAD) Rapid")
#         expect(article.author).to include("Kolton, C. B. M.")
#         expect(article.date).to eq("18-02")
#         expect(article.doi).to eq("10.1111/lam.13134")
#         expect(article.id).to eq("8651")
#         expect(article.isbn_issn).to eq("0266-8254")
#         expect(article.keywords).to include("Bacillus anthracis")
#         expect(article.title).to include("Detection of Bacillus anthracis")
#         expect(article.url).to eq("https://www.ncbi.nlm.nih.gov/pubmed/30776143")
#         expect(article.year).to eq("2019")
#       end
#     end
#   end
# end
