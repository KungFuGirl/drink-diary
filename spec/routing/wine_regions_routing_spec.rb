require "rails_helper"

RSpec.describe WineRegionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/wine_regions").to route_to("wine_regions#index")
    end

    it "routes to #new" do
      expect(:get => "/wine_regions/new").to route_to("wine_regions#new")
    end

    it "routes to #show" do
      expect(:get => "/wine_regions/1").to route_to("wine_regions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/wine_regions/1/edit").to route_to("wine_regions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/wine_regions").to route_to("wine_regions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/wine_regions/1").to route_to("wine_regions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/wine_regions/1").to route_to("wine_regions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/wine_regions/1").to route_to("wine_regions#destroy", :id => "1")
    end

  end
end
