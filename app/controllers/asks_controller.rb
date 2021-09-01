class AsksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  #before_action :asks, only: [:show, :update]

  def create
    @ask = Ask.new(asks_params)
    @ask.user = current_user
    @ask.collectible = Collectible.find(collectible_params[:collectible_id])
    if @ask.save
      redirect_to my_transactions_path
    else
      @collectible = @ask.collectible
      @lowest_ask = @collectible.asks.lowest
      @highest_bid = @collectible.bids.highest
      @ask = Ask.new
      @bid = Bid.new
      render "collectibles/show"
    end
  end

  def update
    @ask = Ask.find(params[:id])
    @nft = Nft.where(collectible: @ask.collectible, user: @ask.user).first
    if Bid.where(collectible: @ask.collectible, user: current_user).first.present?
      Bid.where(collectible: @ask.collectible, user: current_user).first.update(progress: 'done')
    end
    if @nft.present? && @ask.update(progress: 'done')
      @nft.update(user: current_user)
      @transaction = Transaction.create(user: current_user, nft: @nft)
      redirect_to my_transactions_path
    else
      raise
      flash[:alert] = 'Transaction impossible'
      @collectible = @ask.collectible
      @lowest_ask = @collectible.asks.lowest
      @highest_bid = @collectible.bids.highest
      @ask = Ask.new
      @bid = Bid.new
      render "collectibles/show"
    end
  end

  private

  def asks_params
    params.require(:ask).permit(:user_id, :ask_price, :progress)
  end
  def collectible_params
    params.permit(:collectible_id)
  end
end
