class Card < ApplicationRecord
  has_many :deck_cards, dependent: :delete_all
  has_many :decks, through: :deck_cardss
end
