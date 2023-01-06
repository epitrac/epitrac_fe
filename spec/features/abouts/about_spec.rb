require 'rails_helper'

RSpec.describe 'about page' do
    before :each do

    end

    it  "Indicates the about page" do
        visit root_path
        expect(page).to have_link("About")

        click_on "About"
        expect(current_path).to eq("/about")
        expect(page).to have_content("About EpiTrac")
    end

    it "has a section for CDC NNDSS info" do
        visit about_path
        expect(page).to have_content("CDC NNDSS")

        within "#CDC_NNDSS_info" do
            expect(page).to have_content("123")
        end
    end

    it "has a section Info about NNDSS" do
        visit about_path
        expect(page).to have_content("NNDSS")

        within "#NNDSS_info" do
            expect(page).to have_content("456")
        end
    end

    it "has a section Diseases Tracked " do
        visit about_path
        expect(page).to have_content("Diseases Tracked")

        within "#Diseases_tracked" do
            expect(page).to have_content("789")
        end
    end
end