class DiseaseInfoFacade
  def self.disease_info(disease)
    DiseaseInfo.new(EpitracService.disease_info(disease)[:data][:attributes])
  end
end