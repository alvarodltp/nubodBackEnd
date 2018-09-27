class ExersiceSetController < ApplicationController

  skip_before_action :authenticate, only: [:index]

  def index
    render json: ExerciseSet.all
  end

  def show
    render json: ExerciseSet.find(params[:id])
  end

  def create
    render json: ExerciseSet.create(exercise_set_params)
  end

  private
  def exercise_set_params
    params.require(:exercise_sets).permit(:workout_id, :exercise_id, :weight, :reps)
  end

end
