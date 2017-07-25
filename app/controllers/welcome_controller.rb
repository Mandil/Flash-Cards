class DeckController < ApplicationController
  def index
    @decks = Deck.all
  end
end
