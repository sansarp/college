require "rails_helper"

RSpec.describe CollegeAppliesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/college_applies").to route_to("college_applies#index")
    end

    it "routes to #new" do
      expect(:get => "/college_applies/new").to route_to("college_applies#new")
    end

    it "routes to #show" do
      expect(:get => "/college_applies/1").to route_to("college_applies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/college_applies/1/edit").to route_to("college_applies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/college_applies").to route_to("college_applies#create")
    end

    it "routes to #update" do
      expect(:put => "/college_applies/1").to route_to("college_applies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/college_applies/1").to route_to("college_applies#destroy", :id => "1")
    end

  end
end
