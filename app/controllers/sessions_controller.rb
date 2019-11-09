class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
<<<<<<< HEAD
    @user = User.find_by_id(params[:user][:name])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
=======
    @user = User.find_by_id([params[:user][:name]])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user
>>>>>>> a79a390e05f24b9ebd45dfad205474e59cd29bbe
      redirect_to user_path(@user)
    else
      render 'sessions/new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end
