require 'rails_helper'

RSpec.describe Like, type: :model do
  describe 'test cases for posts' do
    before(:each) do
      @author = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
                            bio: 'Teacher from Mexico.', posts_counter: 1)
      @post = Post.create(author: @author, title: 'Hello', text: 'This is my first post', comments_counter: 1,
                          likes_counter: 20)
      @likes = Like.create(user: @author, post: @post)
    end
    it 'is valid with valid attributes' do
      expect(@likes).to be_valid
    end
    it 'is not valid without author attribute' do
      @likes.user = nil
      expect(@likes).to_not be_valid
    end
    it 'is not valid without post valid attributes' do
      @likes.post = nil
      expect(@likes).to_not be_valid
    end
    it 'is valid with valid attributes' do
      @likes.likes_count
      expect(@post.likes_counter).to be(22)
    end
  end
end
