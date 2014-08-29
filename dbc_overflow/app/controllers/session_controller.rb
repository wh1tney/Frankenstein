class SessionController < ApplicationController
  def login
    if session[:user_id].nil?
      render :login
    else
      redirect_to root_path
    end
  end

  def logout

  end
end
