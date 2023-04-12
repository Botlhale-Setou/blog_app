class PostsController < ApplicationController
  def index
    @posts = Post.all
		@userX = User.find_by(id: params[:user_id])
  end

  def show
    @postX = Post.find(params[:id])
		@userX = User.find(params[:user_id])
  end
end
