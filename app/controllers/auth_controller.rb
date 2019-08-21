class AuthController < ApplicationController 
    def new
    end

    def create 
        @user = User.find_by(username: params[:username])
        if(@user && @user.authenticate(params[:password]))
            session[:user_id] = @person.id
            redirect_to main_index_path
        else
            flash[:notice] = "Incorrect username or password."
            render :new
        end
    end

    def destroy
    end
end