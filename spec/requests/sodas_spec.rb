require 'rails_helper'

RSpec.describe "Sodas", type: :request do
  describe "GET /sodas" do
    it "works! (now write some real specs)" do
      get sodas_path
      expect(response).to have_http_status(200)
    end
  end
end
