require "spec_helper"

describe MutantsController do
  describe "routing" do

    it "routes to #index" do
      get("/mutants").should route_to("mutants#index")
    end

    it "routes to #new" do
      get("/mutants/new").should route_to("mutants#new")
    end

    it "routes to #show" do
      get("/mutants/1").should route_to("mutants#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mutants/1/edit").should route_to("mutants#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mutants").should route_to("mutants#create")
    end

    it "routes to #update" do
      put("/mutants/1").should route_to("mutants#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mutants/1").should route_to("mutants#destroy", :id => "1")
    end


  end
end
