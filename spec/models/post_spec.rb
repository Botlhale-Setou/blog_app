require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'test cases for posts' do
    before(:each) do
      @author = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
                            bio: 'Teacher from Mexico.', posts_counter: 1)
      @post = Post.create(author: @author, title: 'Hello', text: 'This is my first post', comments_counter: 1,
                          likes_counter: 20)
    end
    it 'is valid with valid attributes' do
      expect(@post).to be_valid
    end
    it 'is valid with valid text attribute' do
      @post.text = 'am David Kasilia'
      expect(@post).to be_valid
    end
    it 'is not valid without author valid attributes' do
      @post.author = nil
      expect(@post).to_not be_valid
    end
    it 'is valid with comments_counter valid attributes' do
      @post.comments_counter = 1
      expect(@post).to be_valid
    end
    it 'is not  valid without comments_counter valid attributes' do
      @post.comments_counter = nil
      expect(@post).to_not be_valid
    end
    it 'is valid with valid attributes' do
      @post.likes_counter = 20
      expect(@post).to be_valid
    end
    it 'is not valid without likes_counter valid attributes' do
      @post.likes_counter = nil
      expect(@post).to_not be_valid
    end
    it 'is valid with valid attributes' do
      @post.post_counter
      expect(@author.posts_counter).to be(3)
    end
  end
end
