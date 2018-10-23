class ParticipantsController < ApplicationController
skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @participants = Participant.all
  end

  def show
    set_participant
  end

  def create
    @participant = Participant.new(participant_params)
    if @participant.save
      redirect_to dragons_path
    else
      render :new
    end
  end

  def destroy
  end

  private

  def participant_params
    params.require(:paticipant).permit(:name, :email)
  end

  def set_participant
    @participant = Participant.find(params[:id])
  end

end
