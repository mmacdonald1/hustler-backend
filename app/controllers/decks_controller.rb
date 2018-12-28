class DecksController < ApplicationController
  before_action :find_deck, only: [:edit, :update, :cards]

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
    @deck = Deck.create!(name: params[:name], user_id: params[:user_id])
    if @deck.valid?
      render json: { deck: DeckSerializer.new(@deck) }, status: :created
    else
      render json: { error: 'failed to create deck' }, status: :not_acceptable
    end
  end
  def edit
  end
  def update
    @deck.update(name: params[:name], user_id: params[:user_id])
    if @deck.valid?
      render json: { deck: DeckSerializer.new(@deck) }, status: :created
    else
      render json: { error: 'failed to create deck' }, status: :not_acceptable
    end
  end
  def destroy
    render json: Deck.find(params[:id]).destroy
  end
  private

  def find_deck
    @deck = Deck.find(params[:id])
  end

end
