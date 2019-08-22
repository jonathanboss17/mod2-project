class UsersController < ApplicationController 


    def show
        @user = User.find(params[:id])
    end

    def new 
        @user = User.new
        # @user.itineraries.build?
    end

    def create
        @user = User.new(user_params)
        if(@user.save)
            redirect_to main_index_path
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

    def user_itineraries
        @user = User.find(params[:id])
    end

    def user_favorites
        @user = User.find(params[:id])
    end

    private 

    def user_params(*args)
        params.require(:user).permit(:first_name, :last_name, :username, :location, :gender, :bio, :password)
    end
end