require "spec_helper"

describe MyDetailsController do
  describe "routing" do

    it "routes to #index" do
      get("/my_details").should route_to("my_details#index")
    end

    it "routes to #new" do
      get("/my_details/new").should route_to("my_details#new")
    end

    it "routes to #show" do
      get("/my_details/1").should route_to("my_details#show", :id => "1")
    end

    it "routes to #edit" do
      get("/my_details/1/edit").should route_to("my_details#edit", :id => "1")
    end

    it "routes to #create" do
      post("/my_details").should route_to("my_details#create")
    end

    it "routes to #update" do
      put("/my_details/1").should route_to("my_details#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/my_details/1").should route_to("my_details#destroy", :id => "1")
    end

  end
end
