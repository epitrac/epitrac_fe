class DiseaseInfoFacade
  def self.disease_info(disease)
    DiseaseInfo.new(EpitracService.disease_info(disease)[:data][0][:attributes])
  end

  def self.all_disease_info
    EpitracService.all_disease_info[:data].map do |data|
      DiseaseInfo.new(data[:attributes])
    end
  end
end