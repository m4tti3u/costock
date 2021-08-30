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
        category_filter = params[:collectible_filters][:category]
        @collectibles = @collectibles.where(category: category_filter) unless category_filter.empty?

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
end
