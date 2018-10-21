class Participant < ApplicationRecord
  def index
    @participants = Participant.all
  end

  def create
  end

  def destroy
  end

  private

  def set_participant
    @participant = Participant.find(params[:id])
  end
end
