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
    @ask = Ask.new
    @bid = Bid.new
  end

  def new
    @collectible = Collectible.new
  end

  def create
    @collectible = collectible.new(collectibles_params)
    @collectible.user = current_user
    if @collectible.save
      redirect_to new_collectible_path(@collectible)
    else
      render :new
    end
  end

  private

  def collectibles_params
    params.require(:collectible).permit(:category, :brand, :model, :reference, :retail_price, :resell_value, :description, :user_id, :nft_number)
  end
end
