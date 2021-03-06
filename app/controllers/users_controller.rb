class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    session[:user_id] = @user.id
    redirect_to root_path
  end

  private
    def user_params
      params.require(:user).permit(:username, :password)
    end
end
