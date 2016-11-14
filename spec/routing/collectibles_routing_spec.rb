require "rails_helper"

RSpec.describe CollectiblesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/collectibles").to route_to("collectibles#index")
    end

    it "routes to #new" do
      expect(:get => "/collectibles/new").to route_to("collectibles#new")
    end

    it "routes to #show" do
      expect(:get => "/collectibles/1").to route_to("collectibles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/collectibles/1/edit").to route_to("collectibles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/collectibles").to route_to("collectibles#create")
    end

    it "routes to #update" do
      expect(:put => "/collectibles/1").to route_to("collectibles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/collectibles/1").to route_to("collectibles#destroy", :id => "1")
    end

  end
end
