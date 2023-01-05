require 'rails_helper'

RSpec.describe 'application landing page' do
    before :each do
        @user_1 = User.create!(name: "Spongebob", email: "Sponge.bob@underthesea.com", username: "grillmaster1", password_digest: "gary123", state: "Colorado")
        visit root_path
    end

    it "has application name " do
        expect(page).to have_content("EpiTrac")
    end


    xit  "has a create user button " do
        expect(page).to have_button("Create User")
        click_on "Create User"
        expect(current_path).to eq("/users/#{@user_1.id}")
        #madeline is working on the creating new user story, so left pathing unfinished
    end

    it  "has a login button " do
        expect(page).to have_button("Login")
        click_on "Login"
        expect(current_path).to eq("/login")
    end

     it "has a link to about page " do
        expect(page).to have_link("About")
        click_on "About"
        expect(current_path).to eq("/about")
    end
end