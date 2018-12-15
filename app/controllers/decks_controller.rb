class DecksController < ApplicationController
  before_action :find_deck, only [:edit, :update]

  def index
   render json: Deck.all
  end
  def show
    render json: Deck.find(params[:id])
  end
  def new
    @deck = Deck.new
  end
  def create
    @deck = Deck.create(deck_params)
  end
  def edit
  end
  def update
    @deck.update(user_params)
  end
  def destroy
    Deck.find(params[:id]).destroy
  end

  private

  def find_deck
    @deck = Deck.find(params[:id])
  end
  def deck_params
    params.require(:deck).permit(:name)
  end

end
