require 'rails_helper'

RSpec.describe Article do
  it 'exists' do
    attributes = {
      "id": "8651",
      "author": "Kolton, C. B. M.",
      "title": "Detection of Bacillus anthracis",
      "year": "2019",
      "date": "18-02",
      "isbn_issn": "0266-8254",
      "keywords": "Bacillus anthracis",
      "abstract": "The Active Anthrax Detect (AAD)",
      "url": "https://www.ncbi.nlm.nih.gov/pubmed/30776143",
      "doi": "10.1111/lam.13134",
      "journal": 'mSphere'
      }

      article = Article.new(attributes)

      expect(article).to be_instance_of(Article)
      expect(article.author).to eq("Kolton, C. B. M.")
      expect(article.title).to eq("Detection of Bacillus anthracis")
      expect(article.year).to eq("2019")
      expect(article.date).to eq("18-02")
      expect(article.isbn_issn).to eq("0266-8254")
      expect(article.keywords).to eq("Bacillus anthracis")
      expect(article.abstract).to eq("The Active Anthrax Detect (AAD)")
      expect(article.url).to eq("https://www.ncbi.nlm.nih.gov/pubmed/30776143")
      expect(article.doi).to eq("10.1111/lam.13134")
      expect(article.journal).to eq("mSphere")
  end
end