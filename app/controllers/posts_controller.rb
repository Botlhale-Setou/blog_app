class PostsController < ApplicationController
  def index
    @user_x = User.find_by(id: params[:user_id])
    @posts = @user_x.posts
  end

  def show
    @post_x = Post.find(params[:id])
    @user_x = User.find(params[:user_id])
  end
end
