class UserController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to root_path
    else
      :new
    end
  end
end
