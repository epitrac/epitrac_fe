require 'rails_helper'

RSpec.describe 'delete user' do
    before :each do
        @user_1 = User.create!(name: "Spongebob", email: "Sponge.bob@underthesea.com", username: "grillmaster1", password: "gary123", password_confirmation: "gary123", state: "Colorado")
    end

    it "can delete a user " do
        visit "/users/#{@user_1.id}"
        click_link "Delete Account"
        expect(current_path).to eq("/")
    end
end