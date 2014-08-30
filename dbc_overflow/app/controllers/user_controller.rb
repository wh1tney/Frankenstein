class UserController < ApplicationController
  def new
    @user = User.new
  end

  def create
    hashed_password = BCrypt::Password.create(params[:user][:password_hash])
    @user = User.create(email: params[:user][:email], password_hash: hashed_password )
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to root_path
    else
      :new
    end
  end

  def destroy
    @user.destroy
    redirect_to root_path
  end

end
