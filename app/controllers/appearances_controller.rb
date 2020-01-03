class AppearancesController < ApplicationController
    def index
        @appearances = Appearance.all
    end 
    def new 
        @appearance = Appearance.new(params[:id])
        @guests = Guest.all
        @episodes = Episode.all
    end 

    def create 
        @appearance = Appearance.create(appearance_params)
        if appearance_params.valid?             
        redirect_to episode_path
        else 
            flash[:messages] = @appearance.errors.full_messages
        end
    end 

    private 

    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating_id)

    end 
end
