require 'rails_helper'

RSpec.describe "Varietals", type: :request do
  describe "GET /varietals" do
    it "works! (now write some real specs)" do
      get varietals_path
      expect(response).to have_http_status(200)
    end
  end
end
