require 'rails_helper'

RSpec.describe 'log in page' do
    before :each do
        @user_1 = User.create!(name: "Spongebob", email: "Sponge.bob@underthesea.com", username: "grillmaster1", password: "gary123", password_confirmation: "gary123", state: "Colorado")
    end

    it  "has a login button " do
        visit root_path
        expect(page).to have_button("Login")
        click_on "Login"
        expect(current_path).to eq("/login")
        fill_in :username, with: "grillmaster1"
        fill_in :password, with: "gary123"

        click_on "Log In"

        expect(current_path).to eq("/users/#{@user_1.id}")
    end
end