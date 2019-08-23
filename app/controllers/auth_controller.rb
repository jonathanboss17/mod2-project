class AuthController < ApplicationController 
    def new
    end

    def create 
        @user = User.find_by(username: params[:user][:username])
        if(@user && @user.authenticate(params[:user][:password]))
            session[:user_id] = @user.id
            redirect_to home_path
        else
            flash[:notice] = "Incorrect username or password."
            render :new
        end
    end

    def destroy
        session.delete(:user_id)
        flash[:notice] = "You are logged out."
        redirect_to login_path
    end

end