class RacesController < ApplicationController

  def index
  end

  def new
    @race = Race.new
    @race_distances = ["5k", "10k", "Half Marathon", "Marthon"]
  end

  def create
    @race = current_user.races.build(race_params)
    if @race.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def race_params
    params.require(:race).permit(:race_name, :distance, :time_second, :time_minute, :location)
  end
end