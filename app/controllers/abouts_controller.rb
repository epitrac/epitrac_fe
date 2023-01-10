class AboutsController < ApplicationController
  def index
    @diseases = DiseaseInfoFacade.all_disease_info
  end
end