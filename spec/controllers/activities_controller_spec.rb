require 'rails_helper'

RSpec.describe ActivitiesController, type: :controller do
  describe "#index" do
    it "renders a json with all the activities" do
      activities = double(:activities)

      allow(Activity).to receive(:order).with(date: :asc).and_return activities
      allow(activities).to receive(:all).and_return activities

      get :index

      expect(JSON.parse(response.body)).to eq(JSON.parse({"activities" => activities}.to_json))
    end
  end
end
