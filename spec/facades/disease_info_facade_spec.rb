require 'rails_helper'

RSpec.describe DiseaseInfoFacade do
  describe 'class methods' do
    describe '#disease_info' do
      it 'returns information about a given disease' do
        expect(DiseaseInfoFacade.disease_info("Anthrax")).to be_instance_of(DiseaseInfo)

        info = DiseaseInfoFacade.disease_info("Anthrax")

        expect(info.disease).to eq("Anthrax")
        expect(info.information).to eq("Anthrax is a serious infectious disease caused by gram-positive, rod-shaped bacteria known as Bacillus anthracis. It occurs naturally in soil and commonly affects domestic and wild animals around the world. People can get sick with anthrax if they come in contact with infected animals or contaminated animal products. Anthrax can cause severe illness in both humans and animals.")
        expect(info.link).to eq("https://www.cdc.gov/anthrax/")
      end
    end
  end
end