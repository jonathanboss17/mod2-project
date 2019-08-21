class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user 

  def current_user 
    user_id = session[:user_id]
    user_id && User.find(user_id)
  end

  def authorize!
    unless current_user 
      flash[:notice] = "You must be logged in to do that."
      redirect_to main_index_path
    end
  end
end
