class SessionController < ApplicationController
  def login
    if session[:user_id].nil?
      render :login
    else
      redirect_to root_path
    end
  end

  def validate_credentials
    user = User.find_by_email(params[:email])

    if user && BCrypt::Password.new(user.password_hash) == params[:password]
      session[:user_id] = user.id
      redirect_to root_path
    else
      render :login
    end
  end

  def logout

  end
end
