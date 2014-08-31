class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    password_hash = BCrypt::Password.create(params[:user][:password])
    @user = User.create(email: params[:user][:email], password_hash: password_hash )
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to root_path
    else
      :new
    end
  end

end
