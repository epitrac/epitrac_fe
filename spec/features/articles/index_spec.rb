require 'rails_helper'

RSpec.describe 'articles page', :vcr do
  describe 'when a user visits the about page' do 
    before :each do
      ActiveRecord::Base.connection.reset_pk_sequence!('users')
  
      visit root_path
        
      expect(page).to have_button("Login with Google")
      click_on "Login with Google"
      Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google_oauth2]
    end
    it 'they see a link to find articles about that disease and can save articles to dashboard' do 
      click_on "Articles"

      within "#diseases" do
        expect(page).to have_link("Find Anthrax Articles")
        expect(page).to have_link("Find Chikungunya Articles")
        click_link "Find Anthrax Articles"
      end

      expect(current_path).to eq(articles_path)
      expect(page).to have_content("Articles for Anthrax")
      expect(page).to have_content("Total Number of Articles for Anthrax: 19")

      within "#0266-8254" do 
        expect(page).to have_content("Title: Detection of Bacillus anthracis in animal tissues using InBios Active Anthrax Detect Rapid Test lateral flow immunoassay")
        expect(page).to have_link("https://www.ncbi.nlm.nih.gov/pubmed/30776143")
    
        expect(page).to have_button "Save to Dashboard"
        click_button "Save to Dashboard"
      end 

      expect(current_path).to eq("/dashboard.1")
      expect(page).to have_content("Title: Detection of Bacillus anthracis in animal tissues using InBios Active Anthrax Detect Rapid Test lateral flow immunoassay")
      within "#0266-8254" do 
        expect(page).to have_button "Delete Article From Dashboard"
        click_button "Delete Article From Dashboard"
      end
      expect(current_path).to eq(dashboard_path)
      expect(page).to_not have_content("Title: Detection of Bacillus anthracis in animal tissues using InBios Active Anthrax Detect Rapid Test lateral flow immunoassay")


    end

    
  end
end