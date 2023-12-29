class Api::WorksController < ApplicationController
  def index
    render json: Work.all
  end

  def create
    work = Work.new(work_params)
    if work.save
      render json: work
    else
      render json: { errors: work.errors }, status: :unprocessable_entity
    end
  end

  def update
    work = Work.find(params[:id])
    if work.update(work_params)
      render json: work
    else
      render json: { errors: work.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    Work.find(params[:id]).destroy
    render json: { message: 'Work deleted' }
  end

  private
  def work_params
    params.require(:work).permit(:title, :description, :author_id, :exhibition_period_id)
  end
end
