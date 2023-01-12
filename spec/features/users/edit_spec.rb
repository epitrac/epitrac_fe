require 'rails_helper'

RSpec.describe 'user edit state', :vcr do
  describe 'user is logged in' do
    before :each do
      ActiveRecord::Base.connection.reset_pk_sequence!('users')

      visit root_path

      expect(page).to have_button("Login with Google")
      click_on "Login with Google"

      Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google_oauth2]
    end

    it 'lets a user add or update the state' do

      visit '/dashboard/edit'

      select 'Georgia', from: :state
      click_on "Submit"

      expect(current_path).to eq('/dashboard')
    end
  end

  describe 'user is not logged in' do
    it 'a user cannot acces a profile edit page' do
      visit '/dashboard/edit'

      expect(current_path).to eq(root_path)
      expect(page).to have_content("Please login to edit your state.")
    end
  end
end
