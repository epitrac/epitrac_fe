require 'rails_helper'

RSpec.describe 'application landing page' do
  describe 'user logged into application' do
    before :each do
      visit root_path
      
      expect(page).to have_button("Login with Google")
      click_on "Login with Google"
      
      Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google_oauth2]
    end

    it "has application name " do
      expect(page).to have_content("EpiTrac")
    end

    it "has a link to about page " do
      expect(page).to have_link("About")
      click_on "About"
      
      expect(current_path).to eq("/about")
    end
  end

  describe 'user is not logged into application' do
    it  "has a create user button " do
      visit root_path

      expect(page).to have_button("Create User with Google")
      click_on "Create User with Google"
      
      Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google_oauth2]
      
      expect(current_path).to eq(root_path)
    end
    
    it  "has a login button " do
      visit root_path
      
      expect(page).to have_button("Login with Google")
      click_on "Login with Google"
      
      Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google_oauth2]

      expect(current_path).to eq(root_path)
    end
  end 
end
