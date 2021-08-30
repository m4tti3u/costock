class CollectiblesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @collectibles = Collectible.all
    if params[:query].present?
      @collectibles = Collectible.search_by_brand_and_model(params[:query])
    end
  end

  def show
    @collectible = Collectible.includes(:nfts, :asks, :bids).find(params[:id])
    @lowest_ask = @collectible.asks.lowest
    @highest_bid = @collectible.bids.highest
    @asks = @collectible.asks.ongoing
    @bids = @collectible.bids.ongoing
    @ask = Ask.new
    @bid = Bid.new
  end
end
