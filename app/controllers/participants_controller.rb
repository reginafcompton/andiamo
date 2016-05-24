class ParticipantsController < ApplicationController

  def index
    @participants = Participant.all
  end

  def show
    @participant = Participant.find(params[:id])
  end

  def new
    @participant = Participant.new
    @days = Day.all.map { |d| [d.day, d.id] }
    @cities = City.all.map{ |c| [c.name, c.id] }
  end

  def create
    @participant = Participant.new(participant_params)

    if @participant.save
      redirect_to root_path
    else
      render 'new'
    end

  end

  def participant_params
      params.require(:participant).permit(:name, :arrival_time, :arrival_day_id, :arrival_city_id,  :arrival_mode,  :departure_time, :departure_day_id, :departure_city_id, :departure_mode)
    end

end


