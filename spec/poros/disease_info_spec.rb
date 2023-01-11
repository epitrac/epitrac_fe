require 'rails_helper'

RSpec.describe DiseaseInfo do
  it 'exists' do
    attributes = {
      "disease": "Anthrax",
      "information": "Anthrax is a serious infectious disease caused by gram-positive, rod-shaped bacteria known as Bacillus anthracis. It occurs naturally in soil and commonly affects domestic and wild animals around the world. People can get sick with anthrax if they come in contact with infected animals or contaminated animal products. Anthrax can cause severe illness in both humans and animals.",
      "link": "https://www.cdc.gov/anthrax/",
      "short_name": "Anthrax"
      }

    info = DiseaseInfo.new(attributes)

    expect(info).to be_instance_of(DiseaseInfo)
    expect(info.disease).to eq("Anthrax")
    expect(info.information).to eq("Anthrax is a serious infectious disease caused by gram-positive, rod-shaped bacteria known as Bacillus anthracis. It occurs naturally in soil and commonly affects domestic and wild animals around the world. People can get sick with anthrax if they come in contact with infected animals or contaminated animal products. Anthrax can cause severe illness in both humans and animals.")
    expect(info.link).to eq("https://www.cdc.gov/anthrax/")
    expect(info.short_name).to eq("Anthrax")
  end
end