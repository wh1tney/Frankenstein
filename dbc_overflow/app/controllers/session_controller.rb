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
    user_password = BCrypt::Password.new(user.password_hash)

    if user && user_password == params[:password]
      session[:user_id] = user.id
      redirect_to root_path
      puts "AUTHENTICATED!!!"
    else
      flash.now.alert = "Invalid email or password"
      render :login
      puts "NOT AUTHENTICATED!!!"
    end

    puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
    p user.email
    p params[:password]
    p user && BCrypt::Password.new(user.password_hash) == params[:password]
    p user.password_hash
    p BCrypt::Password.new(user.password_hash)
    puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

  end




  def logout
    session[:user_id] = nil
    redirect_to root_path
  end
end
