class Api::ExhibitionPeriodsController < ApplicationController
  def index
    @exhibition_periods = ExhibitionPeriod.all
    render json: @exhibition_periods
  end

  def create
    @exhibition_period = ExhibitionPeriod.create(exhibition_period_params)
    render json: @exhibition_period
  end

  def update
    @exhibition_period = ExhibitionPeriod.find(params[:id])
    @exhibition_period.update_attributes(exhibition_period_params)
    render json: @exhibition_period
  end

  def destroy
    @exhibition_period = ExhibitionPeriod.find(params[:id])
    if @exhibition_period.destroy
      head :no_content, status: :ok
    else
      render json: @exhibition_period.errors, status: :unprocessable_entity
    end
  end

  private
  def exhibition_period_params
    params.require(:exhibition_period).permit(:date)
  end
end
