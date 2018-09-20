class ExercisesController < ApplicationController
  skip_before_action :authenticate, only: [:index]

  def index
    render json: Exercise.all
  end

  def show
    render json: Exercise.find(params[:id])
  end

end
