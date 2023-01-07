require 'rails_helper'

RSpec.describe DiseaseCaseFacade do
  describe 'class methods' do
    describe '#all_states_cases' do
      it 'creates objects from cases data for all states' do
        expect(DiseaseCaseFacade.all_states_cases).to be_an(Array)
        expect(DiseaseCaseFacade.all_states_cases[0]).to be_instance_of(DiseaseCase)
      end
    end

    describe '#cases_for_state' do
      it 'creates objects from cases of a given state' do
        expect(DiseaseCaseFacade.cases_for_state("georgia")).to be_an(Array)
        expect(DiseaseCaseFacade.cases_for_state("georgia")[0]).to be_instance_of(DiseaseCase)
      end
    end
  end
end