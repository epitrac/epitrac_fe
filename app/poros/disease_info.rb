class DiseaseInfo
  attr_reader :disease,
              :information,
              :link

  def initialize(attributes)
    @disease = attributes[:disease]
    @information = attributes[:information]
    @link = attributes[:link]
  end
end