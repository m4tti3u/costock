class BidsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  # before_action :bids, only: [:show, :update]

  def create
    @bid = Bid.new(bids_params)
    @bid.user = current_user
    @bid.collectible = Collectible.find(collectible_params[:collectible_id])
    if @bid.save
      redirect_to my_transactions_path
    else
      @collectible = @bid.collectible
      @lowest_ask = @collectible.asks.lowest
      @highest_bid = @collectible.bids.highest
      @ask = Ask.new
      @bid = Bid.new
      render "collectibles/show"
    end
  end

  def update
    @bid = Bid.find(params[:id])
    @nft = Nft.where(collectible: @bid.collectible, user: current_user).first
    if Ask.where(collectible: @bid.collectible, user: current_user).first.present?
      Ask.where(collectible: @bid.collectible, user: current_user).first.update(progress: 'done')
    end
    if @nft.present? && @bid.update(progress: 'done')
      @nft.update(user: @bid.user)
      @transaction = Transaction.create(user: current_user, nft: @nft)
      redirect_to my_transactions_path
    else
      flash[:alert] = 'Transaction impossible'
      @collectible = @bid.collectible
      @lowest_ask = @collectible.asks.lowest
      @highest_bid = @collectible.bids.highest
      @ask = Ask.new
      @bid = Bid.new
      render "collectibles/show"
    end
  end

  private

  def bids_params
    params.require(:bid).permit(:user_id, :bid_price, :progress)
  end
  def collectible_params
    params.permit(:collectible_id)
  end
end
