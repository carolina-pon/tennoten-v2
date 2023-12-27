class Api::AuthorsController < ApplicationController
  def index
    render json: Author.all
  end

  def create
    author = Author.new(author_params)
    author.save!
    render json: author
  end

  def update
    author = Author.find(params[:id])
    author.update!(author_params)
    render json: author
  end

  def destroy
    author = Author.find(params[:id])
    author.destroy!
    render json: author
  end
end
