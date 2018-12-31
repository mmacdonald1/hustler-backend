class CardsController < ApplicationController
  def index
   @cards = Card.where(deck_id:params[:id])
   puts params[:id]
   puts :deck_id
   puts @cards
   render json: {cards: @cards}
  end
end
