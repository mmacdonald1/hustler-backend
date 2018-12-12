# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

melanie = User.create(username:"lil_macd", email:"melmacd94@gmail.com", password_digest:"password")
deck1 = Deck.create(name: "Rails")
card1 = Card.create(title:"Cli", content:"Rails g")
