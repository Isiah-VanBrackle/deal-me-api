class Api::V1::DecksController < ApplicationController

  def index
    @decks = Deck.all
    render json: @decks, status: :ok
  end

  def create
    @deck = Deck.create
    @cards = Card.all.shuffle
    @cards.each do |card|
      @deck.cards << card
    end
    render json: @deck, status: :created
  end

  def show #deal
    @deck = Deck.find(params[:id])
    render json: @deck, status: :ok
  end

  private

  def deck_params
    params.require(:deck).permit(:cards)
  end

end
