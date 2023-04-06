class Comment < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :post, class_name: 'Post', foreign_key: 'post_id'
  after_save :comments_count

  def comments_count
    post.increment!(:comments_counter)
  end
end
