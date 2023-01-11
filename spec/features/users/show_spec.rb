require 'rails_helper'

RSpec.describe 'users show page', :vcr do
  before :each do
    ActiveRecord::Base.connection.reset_pk_sequence!('users')

    visit root_path
      
    expect(page).to have_button("Login with Google")
    click_on "Login with Google"
    Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google_oauth2]
  end

  it 'shows user information including a state if they select one' do
    visit '/dashboard'
    expect(page).to have_content("Spongebob Squarepants Dashboard")
    expect(page).to have_content("spongebob@gmail.com")
    click_on "Update Your State"
    select "Hawaii", from: :state
    click_on "Submit"
    
    expect(page).to have_content("Hawaii")
  end
end