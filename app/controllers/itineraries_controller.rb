class ItinerariesController < ApplicationController
    before_action :authorize!, except: [:index, :show]

    def index
    end

    def show
        @itinerary = Itinerary.find(params[:id])
    end

    def new
        @itinerary = Itinerary.new
    end

    # still have to figure out a way to allow a user to choose a destination in new controller
    def create
        set_user_id
        @itinerary = Itinerary.new(itinerary_params)
        byebug
        if(@itinerary.save)
            redirect_to :show
        else
            render :new
        end
    end

    def edit
    end

    def update
    end

    def destroy 
    end

    private

    def set_user_id
        params[:itinerary][:user_id] = session[:user_id]
    end

    def itinerary_params(*args)
        params.require(:itinerary).permit(:title, :one_day, :two_day, :three_day, :user_id, :destination_id)
    end

end