require 'rails_helper'

RSpec.describe 'users show page' do
  before :each do
    visit root_path
      
    expect(page).to have_button("Login with Google")
    click_on "Login with Google"
    
    Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google_oauth2]
  end

  it 'shows user information' do
    visit '/dashboard'

    expect(page).to have_content("Spongebob Squarepants's Dashboard")
  end
end