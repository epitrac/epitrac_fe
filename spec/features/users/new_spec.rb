require 'rails_helper'

RSpec.feature "New User Form", type: :feature do
  before :each do
    visit '/users/new'
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

  describe 'user creation' do
    describe 'happy path' do
      before :each do
        fill_in 'Name', with: 'John Doe'
        fill_in 'Email', with: 'jdoe@email.com'
        fill_in 'Username', with: 'john123'
        select 'Colorado', from: 'State'
        fill_in 'Password', with: 'password123'
        fill_in 'Password Confirmation', with: 'password123'
        click_button 'Submit'
      end
      it 'creates a user when the form is filled and submitted successfully' do
        expect(User.exists?(username: 'john123')).to eq(true)
      end
    end
    describe 'sad path' do
      before :each do
        fill_in 'Name', with: 'John Doe'
        fill_in 'Email', with: 'jdoe@email.com'
        fill_in 'Username', with: 'john123'
        select 'Colorado', from: 'State'
      end
      it 'does not create a user if a field is empty' do
        click_button 'Submit'
        expect(User.exists?(username: 'john123')).to eq(false)
      end
      it 'does not create a user if password and password_confirmation do not match' do
        fill_in 'Password', with: 'password123'
        fill_in 'Password Confirmation', with: 'password321'
        click_button 'Submit'
        expect(User.exists?(username: 'john123')).to eq(false)
      end
      it 'does not create a user if the username already exists in the database' do
        fill_in 'Password', with: 'password123'
        fill_in 'Password Confirmation', with: 'password123'
        click_button 'Submit'

        visit '/users/new'
        fill_in 'Name', with: 'John Smith'
        fill_in 'Email', with: 'jsmith@email.com'
        fill_in 'Username', with: 'john123'
        select 'Colorado', from: 'State'
        fill_in 'Password', with: 'password123'
        fill_in 'Password Confirmation', with: 'password123'
        click_button 'Submit'

        expect(User.exists?(name: 'John Smith')).to eq(false)
      end
    end
  end
end
