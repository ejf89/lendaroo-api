# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# http://www.freeiconspng.com/uploads/book-icon-black-good-galleries--24.jpg
require 'faker'


User.create(username: "Issac", password: "pw", email: "issac@issac.com", bio: "im a chill dude spelling be enthusiast", picture: '/smiley.png', address: "11 Broadway New York, NY 10004")

User.create(username: "Max", password: "pw", email: "isfsac@issac.com", bio: "I made an app that willr evolutionize waiting", picture: '/smiley.png', address: "120 Canal st New York, NY")

User.create(username: "Eric", password: "pw", email: "eric@issac.com", bio: "literally made this ", picture: '/smiley.png', address: "118 eldridge st New York, NY")

User.create(username: "LBC", password: "pw", email: "LBC@isfsac.com", bio: "wah gwan", picture: '/smiley.png', address: "280 broome st New York, NY")

User.create(username: "Yung Jeffrey ", password: "pw", email: "LBfC@issac.com", bio: "bamboozled by the big city", picture: '/smiley.png', address: "94 chrystie New York, NY")
