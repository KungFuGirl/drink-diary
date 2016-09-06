require "rails_helper"

RSpec.describe AppellationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/appellations").to route_to("appellations#index")
    end

    it "routes to #new" do
      expect(:get => "/appellations/new").to route_to("appellations#new")
    end

    it "routes to #show" do
      expect(:get => "/appellations/1").to route_to("appellations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/appellations/1/edit").to route_to("appellations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/appellations").to route_to("appellations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/appellations/1").to route_to("appellations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/appellations/1").to route_to("appellations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/appellations/1").to route_to("appellations#destroy", :id => "1")
    end

  end
end
