require 'rails_helper'

RSpec.describe DiseaseCaseFacade do
  describe 'class methods' do
    describe '#all_states_cases' do
      it 'creates objects from cases data for all states' do
        expect(DiseaseCaseFacade.all_states_cases).to be_an(Array)
        expect(DiseaseCaseFacade.all_states_cases[0]).to be_instance_of(DiseaseCase)
        case_1 = DiseaseCaseFacade.all_states_cases[0]

        expect(case_1.coordinates).to eq([-72.67399, 41.76376])
        expect(case_1.cumulative_current).to eq(0)
        expect(case_1.cumulative_last).to eq(0)
        expect(case_1.current_week).to eq(51)
        expect(case_1.disease).to eq("Anthrax")
        expect(case_1.id).to eq("20225100003")
        expect(case_1.state).to eq("CONNECTICUT")
        expect(case_1.year).to eq("2022")
      end
    end

    describe '#cases_for_state' do
      it 'creates objects from cases of a given state' do
        expect(DiseaseCaseFacade.cases_for_state("georgia")).to be_an(Array)
        expect(DiseaseCaseFacade.cases_for_state("georgia")[0]).to be_instance_of(DiseaseCase)

        case_1 = DiseaseCaseFacade.cases_for_state("georgia")[0]

        expect(case_1.coordinates).to eq([-84.39111, 33.74831])
        expect(case_1.cumulative_current).to eq(0)
        expect(case_1.cumulative_last).to eq(0)
        expect(case_1.current_week).to eq(51)
        expect(case_1.disease).to eq("Anthrax")
        expect(case_1.id).to eq("20225100032")
        expect(case_1.state).to eq("GEORGIA")
        expect(case_1.year).to eq("2022")
      end
    end
  end
end