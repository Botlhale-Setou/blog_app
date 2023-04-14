class PostsController < ApplicationController
  def index
    @user_x = User.find_by(id: params[:user_id])
    @posts = @user_x.posts
  end

  def show
    @post_x = Post.find(params[:id])
    @user_x = User.find(params[:user_id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(**post_params, author_id: current_user.id)
    @user = current_user

    if @post.save
      redirect_to user_post_path(@user, @post), notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
