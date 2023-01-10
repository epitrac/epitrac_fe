require 'rails_helper'

RSpec.describe 'about page', :vcr do
  it  "Indicates the about page" do
    visit root_path
    expect(page).to have_link("About")

    click_on "About"
    expect(current_path).to eq("/about")
    expect(page).to have_content("About EpiTrac")
  end

  it "has a section for CDC NNDSS info" do
    visit about_path
    expect(page).to have_content("Our Team")

    within "#our-team" do
      expect(page).to have_content("Darby Smith")
      expect(page).to have_content("Emily Port")
      expect(page).to have_content("Madeline Mauser")
      expect(page).to have_content("William Wang")
      expect(page).to have_content("Shawn Lee")
    end
  end

  it "has a section Info about NNDSS" do
    visit about_path
    
    within "#about" do
      expect(page).to have_content("Our App")
      expect(page).to have_content("The National Notifiable Disease Surveillance System (NNDSS)")
      expect(page).to have_link("Learn More")
    end
  end

  it "has a section Diseases Tracked " do
    visit about_path

    within "#diseases" do
      expect(page).to have_content("Diseases Surveilled")
      expect(page).to have_content("Anthrax")
      expect(page).to have_content("Arboviral diseases, Chikungunya virus disease")
    end
  end
end