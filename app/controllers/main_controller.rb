class MainController < ApplicationController
  def index
    # flash[:notice] = "Debug"
    # flash[:alert] = "Debug"
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
  end
end
