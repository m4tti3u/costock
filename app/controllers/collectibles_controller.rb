class CollectiblesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @category_array = []
    Collectible.all.each do |collectible|
      @category_array << collectible.category unless @category_array.include?(collectible.category)
    end
    @collectibles = Collectible.all
    if params[:query].present?
      @collectibles = Collectible.search_by_brand_and_model(params[:query])
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
