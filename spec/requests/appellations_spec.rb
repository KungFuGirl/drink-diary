require 'rails_helper'

RSpec.describe "Appellations", type: :request do
  describe "GET /appellations" do
    it "works! (now write some real specs)" do
      get appellations_path
      expect(response).to have_http_status(200)
    end
  end
end
