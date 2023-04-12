class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user_x = User.find(params[:id])
  end
end
