class WorkoutsController < ApplicationController
  skip_before_action :authenticate, only: [:index]

  def index
    render json: Workout.all
  end

  def show
    render json: Workout.find(params[:id])
  end

end
