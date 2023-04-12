class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @userX = User.find(params[:id])
  end
end
