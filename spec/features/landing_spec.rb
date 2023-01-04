require 'rails_helper'

RSpec.describe 'application landing page' do
    before :each do

    end

    it "has application name " do
        visit root_path
    end
end