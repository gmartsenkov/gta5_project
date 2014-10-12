require "spec_helper"

describe DefaultAvatarsController do
  describe "routing" do

    it "routes to #index" do
      get("/default_avatars").should route_to("default_avatars#index")
    end

    it "routes to #new" do
      get("/default_avatars/new").should route_to("default_avatars#new")
    end

    it "routes to #show" do
      get("/default_avatars/1").should route_to("default_avatars#show", :id => "1")
    end

    it "routes to #edit" do
      get("/default_avatars/1/edit").should route_to("default_avatars#edit", :id => "1")
    end

    it "routes to #create" do
      post("/default_avatars").should route_to("default_avatars#create")
    end

    it "routes to #update" do
      put("/default_avatars/1").should route_to("default_avatars#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/default_avatars/1").should route_to("default_avatars#destroy", :id => "1")
    end

  end
end
