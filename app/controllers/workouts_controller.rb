class WorkoutsController < ApplicationController
  skip_before_action :authenticate, only: [:index]

  def index
    render json: Workout.all
  end

  def show
    render json: Workout.find(params[:id])
  end

  def create
    render json: Workout.create(workout_params)
  end

  private
  def workout_params
    params.require(:workout).permit(:name, :user_id, :date, :duration, :total_weight_lifted, :personal_record)
  end
end
