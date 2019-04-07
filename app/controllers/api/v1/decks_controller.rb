class Api::V1::DecksController < ApplicationController

  def index
    @decks = Deck.all
    render json: @decks, status: :ok
  end

  def show #new
    @id = params[:id]
    if @id != 'new'
      @deck = Deck.find(params[:id])
     render json: @deck, status: :ok
    else
      @deck = Deck.new
      @cards = Card.all.shuffle
      @cards.each do |card|
        @deck.cards << card
      end
      @deck.save
      render json: @deck, status: :created
    end
  end

end
