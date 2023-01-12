require 'rails_helper'

RSpec.describe 'users show page', :vcr do
  describe 'user is logged in' do
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

  describe 'user is not logged in' do
    it 'does not allow the user to go to the dashboard' do
      visit '/dashboard'

      expect(current_path).to eq(root_path)
      expect(page).to have_content("Please login to view your dashboard.")
    end
  end

  it 'shows user saved articles and has a button to delete them' do

    ActiveRecord::Base.connection.reset_pk_sequence!('users')

    visit root_path

    expect(page).to have_button("Login with Google")
    click_on "Login with Google"
    Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google_oauth2]

    visit '/'
    click_link 'Articles'
    click_link 'Find Anthrax Articles'
    
    click_button('Save to Dashboard', match: :first)
    expect(page).to have_content('Title: Detection of Bacillus anthracis in animal tissues using InBios Active Anthrax Detect Rapid Test lateral flow immunoassay')
    expect(page).to have_content('Total Number of Saved Articles: 24')
    expect(page).to have_button('Delete Article From Dashboard')

    
    click_button('Delete Article From Dashboard', match: :first)
    expect(page).to have_content('Total Number of Saved Articles: 23')
  end
end
