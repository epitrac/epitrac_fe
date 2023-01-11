require 'rails_helper'

RSpec.describe 'delete user', :vcr do
  before :each do
    ActiveRecord::Base.connection.reset_pk_sequence!('users')
    visit root_path
      
    expect(page).to have_button("Login with Google")
    click_on "Login with Google"
    
    Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google_oauth2]
  end

  it "can delete a user " do

    visit "/dashboard"

    click_link "Delete Account"
    
    expect(current_path).to eq("/")
  end

end