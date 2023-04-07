require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'test cases for comments' do
    before(:each) do
      @author = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
                            bio: 'Teacher from Mexico.', posts_counter: 1)
      @post = Post.create(author: @author, title: 'Hello', text: 'This is my first post', comments_counter: 1,
                          likes_counter: 20)
      @comment = Comment.create(post: @post, user: @author, text: 'Hi Tom!')
    end
    it 'is valid with valid attributes' do
      expect(@comment).to be_valid
    end
    it 'is valid with valid text attribute' do
      @comment.text = 'Lorem'
      expect(@comment).to be_valid
    end
    it 'is not valid without post valid attributes' do
      @comment.post = nil
      expect(@comment).to_not be_valid
    end
    it 'is valid with valid attributes' do
      @comment.user = nil
      expect(@comment).to_not be_valid
    end
    it 'is valid with valid attributes' do
      @comment.comments_count
      expect(@post.comments_counter).to be(3)
    end
  end
end
