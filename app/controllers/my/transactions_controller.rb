class My::TransactionsController < ApplicationController

  def index
    @transactions = current_user.transactions
    @collectibles = []
    @nfts = current_user.nfts
    @nfts.each do |nft|
      collectible = Collectible.find(nft.collectible_id)
      @collectibles << collectible
    end
    @valorisation = bid_valorisation
    @bided_collectibles = user_bids
    @asked_collectibles = user_asks
  end

  def show
    @transaction = Transaction.find(params[:id])
  end

  private

  def bid_valorisation
    valorisation = 0
    @collectibles.each do |collectible|
      unless collectible.bids.highest.nil?
        valorisation += collectible.bids.highest.bid_price
      end
    end
    return valorisation
  end

  def user_bids
    bids = current_user.bids
    collectibles = []
    bids.each do |bid|
      bid = Collectible.find(bid.collectible_id)
      collectibles << bid
    end
    return collectibles
  end

  def user_asks
    asks = current_user.asks
    collectibles = []
    asks.each do |ask|
      ask = Collectible.find(ask.collectible_id)
      collectibles << ask
    end
    return collectibles
  end

end
