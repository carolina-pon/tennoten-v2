class Api::CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render json: @categories
  end

  def create
    @category = Category.create(category_params)
    render json: @category
  end

  def update
    @category = Category.find(params[:id])
    @category.update_attributes(category_params)
    render json: @category
  end

  def destroy
    @category = Category.find(params[:id])
    if @category.destroy
      head :no_content, status: :ok
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
