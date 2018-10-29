class DrawsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def draw_params
    params.require(:draw).permits(:title, :description, :participant)
  end

end
