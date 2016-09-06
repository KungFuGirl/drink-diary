require "rails_helper"

RSpec.describe WinesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/wines").to route_to("wines#index")
    end

    it "routes to #new" do
      expect(:get => "/wines/new").to route_to("wines#new")
    end

    it "routes to #show" do
      expect(:get => "/wines/1").to route_to("wines#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/wines/1/edit").to route_to("wines#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/wines").to route_to("wines#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/wines/1").to route_to("wines#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/wines/1").to route_to("wines#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/wines/1").to route_to("wines#destroy", :id => "1")
    end

  end
end
