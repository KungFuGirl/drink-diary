require 'rails_helper'

RSpec.describe "Flavors", type: :request do
  describe "GET /flavors" do
    it "works! (now write some real specs)" do
      get flavors_path
      expect(response).to have_http_status(200)
    end
  end
end
