class CardsController < ApplicationController
  def index
   @cards = Card.where(params[:id] == :deck_id)
   render json: {cards: @cards}
  end
end
