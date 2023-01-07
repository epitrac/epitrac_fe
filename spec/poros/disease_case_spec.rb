require 'rails_helper'

RSpec.describe DiseaseCase do
  it 'exists' do
    attributes = {
      "state": "CONNECTICUT",
      "year": "2022",
      "current_week": 51,
      "disease": "Anthrax",
      "cumulative_current": 0,
      "cumulative_last": 0,
      "coordinates": [
      -72.67399,
      41.76376
      ],
      "id": "20225100003",
      "current_week_cases": 0 }

    disease_case = DiseaseCase.new(attributes)
    
    expect(disease_case).to be_instance_of(DiseaseCase)
    expect(disease_case.state).to eq("CONNECTICUT")
    expect(disease_case.year).to eq("2022")
    expect(disease_case.current_week).to eq(51)
    expect(disease_case.disease).to eq("Anthrax")
    expect(disease_case.cumulative_current).to eq(0)
    expect(disease_case.cumulative_last).to eq(0)
    expect(disease_case.coordinates).to eq([-72.67399,41.76376])
    expect(disease_case.id).to eq("20225100003")
    expect(disease_case.current_week_cases).to eq(0)
  end
end