class Api::V1::DecksController < ApplicationController

  # def index
  #   @decks = Deck.all
  #   render json: @decks, status: :ok
  # end

  def create
    @deck = Deck.new
    @cards = Card.all.shuffle
    @cards.each do |card|
      @deck.cards << card
    end
    # @deck.deal = @deck.cards.slice(@deck.begin, 5)
    # @deck.begin += 5
    @deck.save
    render json: @deck, status: :created
  end

  def update
    @deck = Deck.find(params[:id])
    @deck.begin += 5
    @deck.save
    render json: @deck, status: :ok
  end

  def show #new
    @deck = Deck.find(params[:id])
    if @deck.begin == 0
      @deck.deal = @deck.cards.slice(@deck.begin, 5)
      @deck.begin += 5
    else
      @deck.deal = @deck.cards.slice(@deck.begin, 5)
    end
    @deck.save
    render json: @deck, status: :ok
  end


end
