class DestinationsController < ApplicationController 
    def index
        if(params[:search]) 
            @destination = Destination.where("location LIKE :search", search: params[:search]).first
            redirect_to destination_path(@destination)
        end
    end

    def show 
        @destination = Destination.find(params[:id])
    end
end     