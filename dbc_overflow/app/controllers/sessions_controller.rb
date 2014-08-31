class SessionsController < ApplicationController
  def login
    if session[:user_id].nil?
      render :login
    else
      redirect_to root_path
    end
  end

  def validate_credentials
    user = User.find_by_email(params[:email])
    user_password = BCrypt::Password.new(user.password_hash)

    if user && user_password == params[:password]
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash.now.alert = "Invalid email or password"
      render :login
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end
end
