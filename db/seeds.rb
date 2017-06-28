# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

20.times do
  User.create(username: Faker::Internet.unique.user_name, password: 'pw', email: Faker::Internet.email, picture: 'Projects/Lendaroo/lendr_api/public/smiley.jpg', home_location: Faker::Address.latitude + ',' + Faker::Address.longitude
  )
end

20.times do
  Book.create(title: Faker::Book.title, author: Faker::Book.author, description: Faker::Hipster.paragraph, image_url: 'Projects/Lendaroo/lendr_api/public/smiley.jpg', rating: Faker::Number.between(1, 5).to_i)
end


16.times do
  UserBook.create(user_id: Faker::Number.between(1, 19).to_i,
   book_id: Faker::Number.between(1, 19).to_i)
end
