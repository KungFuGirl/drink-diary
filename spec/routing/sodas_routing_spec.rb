require "rails_helper"

RSpec.describe SodasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sodas").to route_to("sodas#index")
    end

    it "routes to #new" do
      expect(:get => "/sodas/new").to route_to("sodas#new")
    end

    it "routes to #show" do
      expect(:get => "/sodas/1").to route_to("sodas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sodas/1/edit").to route_to("sodas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sodas").to route_to("sodas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sodas/1").to route_to("sodas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sodas/1").to route_to("sodas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sodas/1").to route_to("sodas#destroy", :id => "1")
    end

  end
end
