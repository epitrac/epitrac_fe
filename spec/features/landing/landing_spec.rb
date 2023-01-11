require 'rails_helper'

RSpec.describe 'application landing page', :vcr do
  describe 'user logged into application' do
    before :each do
      visit root_path
      
      expect(page).to have_button("Login with Google")
      click_on "Login with Google"
      
      Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google_oauth2]
    end

    it "has application name" do
      expect(page).to have_content("EpiTrac")
    end

    it "has a link to about page " do
      expect(page).to have_link("About")
      
      click_on "About"
      
      expect(current_path).to eq("/about")
    end

    it "has a link to article section on about page " do
      expect(page).to have_link("Articles", href:"/about#diseases")

      click_on "Articles"
      expect(current_path).to eq("/about") 
      expect(page).to have_content("Diseases Surveilled")
    end

    it 'does not have a create user button or login user button' do
      expect(page).to_not have_button("Create User with Google")
      expect(page).to_not have_button("Login with Google")
    end

    it 'has a button to logout' do
      expect(page).to have_button("Logout")

      click_on "Logout"

      expect(page).to_not have_button("Logout")
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

    it 'does not have a button to logout' do
      visit root_path

      expect(page).to_not have_button("Logout")
    end
  end 
end
