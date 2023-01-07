class DiseaseCase
  attr_reader :state, 
              :year, 
              :current_week, 
              :disease, 
              :cumulative_current, 
              :cumulative_last, 
              :coordinates, 
              :id, 
              :current_week_cases

  def initialize(attributes)
    @state = attributes[:state]
    @year = attributes[:year]
    @current_week = attributes[:current_week]
    @disease = attributes[:disease]
    @cumulative_current = attributes[:cumulative_current]
    @cumulative_last = attributes[:cumulative_last]
    @coordinates = attributes[:coordinates]
    @id = attributes[:id]
    @current_week_cases = attributes[:current_week_cases]
  end
end