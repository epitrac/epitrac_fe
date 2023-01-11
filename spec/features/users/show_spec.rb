require 'rails_helper'

RSpec.describe 'users show page', :vcr do
  before :each do
    ActiveRecord::Base.connection.reset_pk_sequence!('users')

    visit root_path
      
    expect(page).to have_button("Login with Google")
    click_on "Login with Google"
    
    Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google_oauth2]
    # VCR.eject_cassette
    # VCR.insert_cassette('has section for articles')
  end

  it 'shows user information including a state if they select one' do
    visit '/dashboard'
    expect(page).to have_content("Spongebob Squarepants Dashboard")
    expect(page).to have_content("spongebob@gmail.com")
    # expect(page).to_not have_content("state")
    click_on "Update Your State"
    select "Hawaii", from: :state
    click_on "Submit"
    
    expect(page).to have_content("Hawaii")
  end



  # it 'has the users home state if they selected one' do


  #   visit '/dashboard'

  #   click_on "Update Your State"
  #   select "Hawaii", from: :state
  #   click_on "Submit"
    
  #   expect(page).to have_content("Hawaii")
  # end

  # it 'has a section for articles' do


  #   visit '/dashboard'

  #   expect(page).to have_content("Spongebob Squarepants's Saved Articles")
  # end
end