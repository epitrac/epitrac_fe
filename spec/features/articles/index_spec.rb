require 'rails_helper'

RSpec.describe 'articles page', :vcr do
  describe 'when a user visits the about page' do 
    it 'they see a link to find articles about that disease' do 
      visit about_path

      within "#diseases" do
        expect(page).to have_link("Find Anthrax Articles")
        expect(page).to have_link("Find Chikungunya Articles")
        click_link "Find Anthrax Articles"
      end

      expect(current_path).to eq(articles_path)
      expect(page).to have_content("Articles for Anthrax")
      expect(page).to have_content("Total Number of Articles for Anthrax: 19")
      expect(page).to have_content("Title: Detection of Bacillus anthracis in animal tissues using InBios Active Anthrax Detect Rapid Test lateral flow immunoassay")
      expect(page).to have_link("https://www.ncbi.nlm.nih.gov/pubmed/30776143")
    end

    it 'logged out user cant save article ' do
      visit root_path

      click_on "Reportable Diseases"
      click_link "Find Anthrax Articles"

      expect(page).to_not have_content("Save to Dashboard")
    end
  end
end