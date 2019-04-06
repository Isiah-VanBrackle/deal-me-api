class Api::V1::DecksController < ApplicationController

  def index
    @deck = Deck.all
    render json: @deck, status: :ok  
  end



end
