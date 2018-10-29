class DrawsController < ApplicationController
    skip_before_action :set_draw, only: [:show, :edit, :update, :destroy]

  def index
    @draws = Draw.all
  end

  def show
  end

  def new
    @draw = Draw.new
  end

  def create
    @draw = Draw.new(draw_params)
    @draw.creator = current_user
    @draw.save
  end

  def edit
  end

  def update
    @draw.update
  end

  def destroy
  end

  private

  def set_draw
    @draw = Draw.find(params[:id])
  end

  def draw_params
    params.require(:draw).permits(:title, :description)
  end

end
