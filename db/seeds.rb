# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

melanie = User.create(username:"lil_macd", email:"melmacd94@gmail.com", password:"password")
deck1 = Deck.create(user_id:1, name: "Rails")
card1 = Card.create(deck_id:1, title:"Cli", content:"Rails g")
