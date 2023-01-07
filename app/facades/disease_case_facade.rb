class DiseaseCaseFacade
  def self.all_states_cases
    EpitracService.all_states_cases[:data].map do |state_case|
      DiseaseCase.new(state_case)
    end
  end

  def self.cases_for_state(state)
    EpitracService.cases_for_state("georgia")[:data].map do |state_case|
      DiseaseCase.new(state_case)
    end
  end
end