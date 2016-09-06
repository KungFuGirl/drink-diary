require "rails_helper"

RSpec.describe VarietalsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/varietals").to route_to("varietals#index")
    end

    it "routes to #new" do
      expect(:get => "/varietals/new").to route_to("varietals#new")
    end

    it "routes to #show" do
      expect(:get => "/varietals/1").to route_to("varietals#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/varietals/1/edit").to route_to("varietals#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/varietals").to route_to("varietals#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/varietals/1").to route_to("varietals#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/varietals/1").to route_to("varietals#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/varietals/1").to route_to("varietals#destroy", :id => "1")
    end

  end
end
