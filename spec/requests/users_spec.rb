require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    before :each do
      get '/users/'
    end

    it 'Returns a http success code' do
      get '/users/'
      expect(response).to have_http_status(:success)
    end

    it 'should return index' do
      expect(response).to render_template(:index)
    end
  end

  describe 'GET /show' do
    before :each do
      @user = User.create(
        name: 'Botlhale',
        photo: 'https://randomuser.me/api/portraits/men/1.jpg',
        bio: 'Full-Stack Software Engineer',
        posts_counter: 1
      )
      get "/users/#{@user.id}"
    end

    it 'Returns a http success code' do
      expect(response).to have_http_status(:success)
    end

    it 'should return show' do
      expect(response).to render_template(:show)
    end
  end
end
