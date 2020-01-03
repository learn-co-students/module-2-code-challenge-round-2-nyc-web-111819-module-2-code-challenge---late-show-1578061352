class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(guest_params)
end

  def new
    @episode = Episode.new
  end

  def create 
    @episode = Episode.create(params[:id])
    redirect_to episode_path(@episode)
  end

  def guest_params
    params.require(:episode).permit(:date, :number)
end


end
