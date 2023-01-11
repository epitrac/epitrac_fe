require 'rails_helper'

RSpec.describe 'delete user', :vcr do
  before :each do
    ActiveRecord::Base.connection.reset_pk_sequence!('users')
    visit root_path
      
    expect(page).to have_button("Login with Google")
    click_on "Login with Google"
    
    Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google_oauth2]
    # VCR.insert_cassette('delete a user')

  end

  it "can delete a user " do
    # VCR.insert_cassette('delete a user')

    # VCR.eject_cassette
    # VCR.insert_cassette('delete a user')
    # expect(page).to have_link(“Link Name”, href: expected_path)
    visit "/dashboard"
    # VCR.eject_cassette

    click_link "Delete Account"
    
    expect(current_path).to eq("/")
    # VCR.eject_cassette
  end

end