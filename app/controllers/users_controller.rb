class UsersController < ApplicationController 


    def show
        @user = User.find(params[:id])
    end

    def new 
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if(@user.save)
            redirect_to home_path
        else
            render :new
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if(@user.update(user_params))
            redirect_to user_path(@user)
        else
            render :edit
        end
    end

    def destroy
        @user = User.find(params[:id])
        User.destroy(@user.id)
        # check README for the other stuff I have to do 
        redirect_to home_path
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