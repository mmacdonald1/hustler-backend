class CardsController < ApplicationController
  before_action :find_card, only: [:edit, :update]
  def index
   @cards = Card.where(deck_id:params[:id])
   render json: {cards: @cards}
  end
  def show
    render json: Card.find(params[:id])
  end
  def new
    @card = Card.new
  end
  def create
    @card = Card.create!(title: params[:title], content: params[:content], deck_id: params[:deck_id])
    if @card.valid?
      render json: { card: CardSerializer.new(@card) }, status: :created
    else
      render json: { error: 'failed to create card' }, status: :not_acceptable
    end
  end
  def edit
  end
  def update
    @card.update(title: params[:title], content: params[:content], deck_id: params[:deck_id])
    if @card.valid?
      render json: { card: CardSerializer.new(@card) }, status: :created
    else
      render json: { error: 'failed to create card' }, status: :not_acceptable
    end
  end
  def destroy
    render json: Card.find(params[:id]).destroy
  end
  private

  def find_card
    @card = Card.find(params[:id])
  end

end
