require 'rails_helper'

RSpec.describe "WineTypes", type: :request do
  describe "GET /wine_types" do
    it "works! (now write some real specs)" do
      get wine_types_path
      expect(response).to have_http_status(200)
    end
  end
end
