class ActivitiesController < ApplicationController

  def index
    render json: { activities: Activity.order(date: :asc).all }, status: 200
  end
end
