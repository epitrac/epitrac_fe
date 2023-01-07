require 'rails_helper'

RSpec.describe EpitracService do
  describe 'class methods' do
    describe '#all_states_cases' do
      it 'finds all stats disease cases for the week' do
        states_cases = EpitracService.all_states_cases

        expect(states_cases).to be_a(Hash)
        expect(states_cases[:data]).to be_an(Array)
        state_case = states_cases[:data][0]
        
        expect(state_case[:attributes]).to have_key(:state)
        expect(state_case[:attributes][:state]).to be_a(String)

        expect(state_case[:attributes]).to have_key(:year)
        expect(state_case[:attributes][:year]).to be_a(String)

        expect(state_case[:attributes]).to have_key(:current_week)
        expect(state_case[:attributes][:current_week]).to be_a(Integer)

        expect(state_case[:attributes]).to have_key(:disease)
        expect(state_case[:attributes][:disease]).to be_a(String)

        expect(state_case[:attributes]).to have_key(:cumulative_current)
        expect(state_case[:attributes][:cumulative_current]).to be_a(Integer)

        expect(state_case[:attributes]).to have_key(:cumulative_last)
        expect(state_case[:attributes][:cumulative_last]).to be_a(Integer)

        expect(state_case[:attributes]).to have_key(:coordinates)
        expect(state_case[:attributes][:coordinates]).to be_a(Array)

        expect(state_case[:attributes]).to have_key(:id)
        expect(state_case[:attributes][:id]).to be_a(String)

        expect(state_case[:attributes]).to have_key(:current_week_cases)
        expect(state_case[:attributes][:current_week_cases]).to be_a(Integer)
      end
    end

    describe '#cases_for_state' do
      it 'returns only cases for a given state' do
        state_cases = EpitracService.cases_for_state("georgia")

        expect(state_cases).to be_a(Hash)
        expect(state_cases[:data]).to be_an(Array)
        state_case = state_cases[:data][0]
        
        expect(state_case[:attributes]).to have_key(:state)
        expect(state_case[:attributes][:state]).to be_a(String)

        expect(state_case[:attributes]).to have_key(:year)
        expect(state_case[:attributes][:year]).to be_a(String)

        expect(state_case[:attributes]).to have_key(:current_week)
        expect(state_case[:attributes][:current_week]).to be_a(Integer)

        expect(state_case[:attributes]).to have_key(:disease)
        expect(state_case[:attributes][:disease]).to be_a(String)

        expect(state_case[:attributes]).to have_key(:cumulative_current)
        expect(state_case[:attributes][:cumulative_current]).to be_a(Integer)

        expect(state_case[:attributes]).to have_key(:cumulative_last)
        expect(state_case[:attributes][:cumulative_last]).to be_a(Integer)

        expect(state_case[:attributes]).to have_key(:coordinates)
        expect(state_case[:attributes][:coordinates]).to be_a(Array)

        expect(state_case[:attributes]).to have_key(:id)
        expect(state_case[:attributes][:id]).to be_a(String)

        expect(state_case[:attributes]).to have_key(:current_week_cases)
        expect(state_case[:attributes][:current_week_cases]).to be_a(Integer)
      end
    end
  end
end