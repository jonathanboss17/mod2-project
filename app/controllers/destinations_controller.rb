class DestinationsController < ApplicationController 
    def index
        if(params[:search]) 
            @destination = Destination.where("location LIKE :search", search: params[:search]).first
            byebug
            redirect_to destination_path(@destination)
        end
    end

    def show 
        @destination = Destination.find(params[:id])
        byebug
    end
end     