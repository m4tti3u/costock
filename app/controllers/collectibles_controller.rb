class CollectiblesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @category_array = Collectible.pluck(:category).uniq
    @collectibles = Collectible.all
    if params[:query].present?
      @collectibles = @collectibles.search_by_brand_and_model(params[:query])
    end
    if params[:collectible_filters].present?
        @category_filter = params[:collectible_filters][:category]
        @collectibles = @collectibles.where(category: @category_filter)

        # max_price_filter = params[:collectible_filters][:max_price]
        # @collectibles = @collectibles.where("collectibles.price <= :query ", query: max_price_filter) unless max_price_filter.empty?
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

  def new
    @collectible = Collectible.new
  end

  def create
    @collectible = Collectible.new(collectibles_params)
    @collectible.user = current_user
    # @collectible.validation = false
    if @collectible.save
      flash[:notice] = "Votre collectible est en cours de validation"
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def collectibles_params
    params.require(:collectible).permit(:category, :brand, :model, :nft_number)
  end
end
