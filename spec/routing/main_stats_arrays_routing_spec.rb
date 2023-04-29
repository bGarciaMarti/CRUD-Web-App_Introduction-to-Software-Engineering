require "rails_helper"

RSpec.describe MainStatsArraysController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/main_stats_arrays").to route_to("main_stats_arrays#index")
    end

    it "routes to #new" do
      expect(get: "/main_stats_arrays/new").to route_to("main_stats_arrays#new")
    end

    it "routes to #show" do
      expect(get: "/main_stats_arrays/1").to route_to("main_stats_arrays#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/main_stats_arrays/1/edit").to route_to("main_stats_arrays#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/main_stats_arrays").to route_to("main_stats_arrays#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/main_stats_arrays/1").to route_to("main_stats_arrays#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/main_stats_arrays/1").to route_to("main_stats_arrays#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/main_stats_arrays/1").to route_to("main_stats_arrays#destroy", id: "1")
    end
  end
end
