require 'rails_helper'

RSpec.describe "Blends", type: :request do
  describe "GET /blends" do
    it "works! (now write some real specs)" do
      get blends_path
      expect(response).to have_http_status(200)
    end
  end
end
