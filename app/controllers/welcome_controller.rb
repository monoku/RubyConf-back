class WelcomeController < ApplicationController
  def index
    render json: {message: "ok"}, status: 200
  end
end
