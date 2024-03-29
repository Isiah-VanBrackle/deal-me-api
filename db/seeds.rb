# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
DeckCard.destroy_all
Deck.destroy_all
Card.destroy_all

deck_test = Deck.create!

Card.create(suite: 'spades', card_type: 'ace', image: '')
Card.create(suite: 'spades', card_type: '2', image: '')
Card.create(suite: 'spades', card_type: '3', image: '')
Card.create(suite: 'spades', card_type: '4', image: '')
Card.create(suite: 'spades', card_type: '5', image: '')
Card.create(suite: 'spades', card_type: '6', image: '')
Card.create(suite: 'spades', card_type: '7', image: '')
Card.create(suite: 'spades', card_type: '8', image: '')
Card.create(suite: 'spades', card_type: '9', image: '')
Card.create(suite: 'spades', card_type: '10', image: '')
Card.create(suite: 'spades', card_type: 'jack', image: '')
Card.create(suite: 'spades', card_type: 'queen', image: '')
Card.create(suite: 'spades', card_type: 'king', image: '')
Card.create(suite: 'hearts', card_type: 'ace', image: '')
Card.create(suite: 'hearts', card_type: '2', image: '')
Card.create(suite: 'hearts', card_type: '3', image: '')
Card.create(suite: 'hearts', card_type: '4', image: '')
Card.create(suite: 'hearts', card_type: '5', image: '')
Card.create(suite: 'hearts', card_type: '6', image: '')
Card.create(suite: 'hearts', card_type: '7', image: '')
Card.create(suite: 'hearts', card_type: '8', image: '')
Card.create(suite: 'hearts', card_type: '9', image: '')
Card.create(suite: 'hearts', card_type: '10', image: '')
Card.create(suite: 'hearts', card_type: 'jack', image: '')
Card.create(suite: 'hearts', card_type: 'queen', image: '')
Card.create(suite: 'hearts', card_type: 'king', image: '')
Card.create(suite: 'diamonds', card_type: 'ace', image: '')
Card.create(suite: 'diamonds', card_type: '2', image: '')
Card.create(suite: 'diamonds', card_type: '3', image: '')
Card.create(suite: 'diamonds', card_type: '4', image: '')
Card.create(suite: 'diamonds', card_type: '5', image: '')
Card.create(suite: 'diamonds', card_type: '6', image: '')
Card.create(suite: 'diamonds', card_type: '7', image: '')
Card.create(suite: 'diamonds', card_type: '8', image: '')
Card.create(suite: 'diamonds', card_type: '9', image: '')
Card.create(suite: 'diamonds', card_type: '10', image: '')
Card.create(suite: 'diamonds', card_type: 'jack', image: '')
Card.create(suite: 'diamonds', card_type: 'queen', image: '')
Card.create(suite: 'diamonds', card_type: 'king', image: '')
Card.create(suite: 'clubs', card_type: 'ace', image: '')
Card.create(suite: 'clubs', card_type: '2', image: '')
Card.create(suite: 'clubs', card_type: '3', image: '')
Card.create(suite: 'clubs', card_type: '4', image: '')
Card.create(suite: 'clubs', card_type: '5', image: '')
Card.create(suite: 'clubs', card_type: '6', image: '')
Card.create(suite: 'clubs', card_type: '7', image: '')
Card.create(suite: 'clubs', card_type: '8', image: '')
Card.create(suite: 'clubs', card_type: '9', image: '')
Card.create(suite: 'clubs', card_type: '10', image: '')
Card.create(suite: 'clubs', card_type: 'jack', image: '')
Card.create(suite: 'clubs', card_type: 'queen', image: '')
Card.create(suite: 'clubs', card_type: 'king', image: '')

Card.all.shuffle.each do |card|
  deck_test.cards << card
end
