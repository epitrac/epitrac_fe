require 'rails_helper'

RSpec.describe DiseaseInfoFacade do
  describe 'class methods', :vcr do
    describe '#disease_info' do
      it 'returns information about a given disease' do
        expect(DiseaseInfoFacade.disease_info("Anthrax")).to be_instance_of(DiseaseInfo)

        info = DiseaseInfoFacade.disease_info("Anthrax")

        expect(info.disease).to eq("Anthrax")
        expect(info.information).to eq("Anthrax is a serious infectious disease caused by gram-positive, rod-shaped bacteria known as Bacillus anthracis. It occurs naturally in soil and commonly affects domestic and wild animals around the world. People can get sick with anthrax if they come in contact with infected animals or contaminated animal products. Anthrax can cause severe illness in both humans and animals.")
        expect(info.link).to eq("https://www.cdc.gov/anthrax/")
        expect(info.short_name).to eq("Anthrax")
      end
    end

    describe '#all_disease_info' do
      it 'returns all disease info' do
        expect(DiseaseInfoFacade.all_disease_info[0]).to be_instance_of(DiseaseInfo)
        info = DiseaseInfoFacade.all_disease_info[0]

        expect(info.disease).to be_a(String)
        expect(info.information).to be_a(String)
        expect(info.link).to be_a(String)
        expect(info.short_name).to be_a(String)
      end
    end
  end
end