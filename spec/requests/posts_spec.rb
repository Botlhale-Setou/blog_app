require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    before :each do
      @user = User.create(
        name: 'Rick',
        photo: 'https://randomuser.me/api/portraits/men/1.jpg',
        bio: 'Mortys awesome grandfather!',
        posts_counter: 1
      )
      get "/users/#{@user.id}/posts"
    end

    it 'returns a success http code' do
      expect(response).to have_http_status(:success)
    end
    it 'should render the index action' do
      expect(response).to render_template(:index)
    end
  end

  describe 'GET /show' do
    before :each do
      @user = User.create(
        name: 'Morty',
        bio: 'Ricks nephew',
        posts_counter: 1
      )
      @post = Post.create(
        author: @user,
        title: 'Hello',
        text: 'This is my first post',
        author_id: @user.id,
        comments_counter: 0,
        likes_counter: 0
      )
      get "/users/#{@user.id}/posts/#{@post.id}"
    end

    it 'Returns a http success code' do
      expect(response).to have_http_status(:success)
    end

    it 'should render the show action' do
      expect(response).to render_template(:show)
    end
  end
end
