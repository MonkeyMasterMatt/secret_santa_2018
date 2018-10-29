class DrawsController < ApplicationController
    before_action :set_draw, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @draw = Draw.new
  end

  def create
    @draw = Draw.new(draw_params)
    # @draw.creator = current_user
    if @draw.save
      redirect_to '/'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @draw.update(draw_params)
      redirect_to '/'
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def set_draw
    @draw = Draw.find(params[:id])
  end

  def draw_params
    params.require(:draw).permit(:title, :description)
  end

end
