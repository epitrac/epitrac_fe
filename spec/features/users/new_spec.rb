require 'rails_helper'

RSpec.feature "New User Form", type: :feature do
  before :each do
    visit '/user/new'
  end
  describe 'form fields' do
    it 'has a name field' do
      expect(page).to have_field(:name)
    end
    it 'has an email field' do
      expect(page).to have_field(:email)
    end
    it 'has a username field' do
      expect(page).to have_field(:username)
    end
    it 'has a state field' do
      expect(page).to have_field(:state)
    end
    it 'has a password field' do
      expect(page).to have_field(:password)
    end
    it 'has a password confirmation field' do
      expect(page).to have_field(:password_confirmation)
    end
    it 'has a submit button' do
      expect(page).to have_button('Submit')
    end
  end
end
