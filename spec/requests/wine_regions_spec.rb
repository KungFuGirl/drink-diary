require 'rails_helper'

RSpec.describe "WineRegions", type: :request do
  describe "GET /wine_regions" do
    it "works! (now write some real specs)" do
      get wine_regions_path
      expect(response).to have_http_status(200)
    end
  end
end
