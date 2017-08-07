class SessionsController < ApplicationController
  def new
    @user = User.new
    # render 'new'
  end

  def create
    @user = User.find_by(username: params[:session][:username])

    if @user
      if @user.authenticate(params[:session][:password])
        session[:user_id] = @user.id
        redirect_to root_path
      else
        render 'new'
      end
    else
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end


end
