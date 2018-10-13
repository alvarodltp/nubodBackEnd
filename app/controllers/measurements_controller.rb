class MeasurementsController < ApplicationController
  skip_before_action :authenticate

  def index
    render json: Measurement.all
  end

  def show
    render json: Measurement.find(params[:id])
  end

  def create
    render json: Measurement.create(measurement_params)
  end

  private
  def measurement_params
    params.require(:measurement).permit(:user_id, :date, :body_weight, :body_fat, :bmr, :neck, :shoulder, :chest, :bicep, :waist, :hip, :thigh)
  end
end
