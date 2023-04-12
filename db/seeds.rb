# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
first_user = User.create(name: 'Botlhale', photo: 'https://cdn.pixabay.com/photo/2023/01/05/22/35/flower-7700011_640.jpg', bio: 'Full-Stack Engineer', posts_counter: 0)
second_user = User.create(name: 'Matthew', photo: 'https://cdn.pixabay.com/photo/2023/01/22/13/46/swans-7736415__340.jpg', bio: 'Teacher in South Africa', posts_counter: 0)

first_post = Post.create(author: first_user, title: 'First Post', text: 'This is my first post', comments_counter: 0, likes_counter: 5)
second_post = Post.create(author: first_user, title: 'Second Post', text: 'This is the second post', comments_counter: 0, likes_counter: 13)
third_post = Post.create(author: first_user, title: 'Third Post', text: 'This is my third post', comments_counter: 0, likes_counter: 2)
fourth_post = Post.create(author: first_user, title: 'Fourth Post', text: 'This is my fourth post', comments_counter: 0, likes_counter: 12)

Comment.create(post: first_post, user: second_user, text: 'Hi there!')
Comment.create(post: first_post, user: second_user, text: 'Hope you are doing well')
Comment.create(post: first_post, user: second_user, text: 'I just wanted to ask you something')
Comment.create(post: first_post, user: second_user, text: 'Hope you dont take this the wrong way')
Comment.create(post: first_post, user: second_user, text: 'When did you fall out of heaven?')
Comment.create(post: first_post, user: second_user, text: 'Hahaha have a great day!')

Like.create(post: first_post, user: second_user)
Like.create(post: second_post, user: second_user)
Like.create(post: third_post, user: second_user)
Like.create(post: fourth_post, user: second_user)