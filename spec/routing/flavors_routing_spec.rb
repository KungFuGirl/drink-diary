require "rails_helper"

RSpec.describe FlavorsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/flavors").to route_to("flavors#index")
    end

    it "routes to #new" do
      expect(:get => "/flavors/new").to route_to("flavors#new")
    end

    it "routes to #show" do
      expect(:get => "/flavors/1").to route_to("flavors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/flavors/1/edit").to route_to("flavors#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/flavors").to route_to("flavors#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/flavors/1").to route_to("flavors#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/flavors/1").to route_to("flavors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/flavors/1").to route_to("flavors#destroy", :id => "1")
    end

  end
end
