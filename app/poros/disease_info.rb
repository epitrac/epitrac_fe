class DiseaseInfo
  attr_reader :disease,
              :information,
              :link, 
              :short_name

  def initialize(attributes)
    @disease = attributes[:disease]
    @information = attributes[:information]
    @link = attributes[:link]
    @short_name = attributes[:short_name]
  end
end