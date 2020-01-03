class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(guest_params)
end

  def new
    @guest = Guest.new
  end

  def create 
    @guest = Guest.create(params[:id])
    redirect_to guest_path(@guest)
  end

  def guest_params
    params.require(:guest).permit(:name, :occupation)
end
end
