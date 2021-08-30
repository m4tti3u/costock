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
  end

  def show
    @transaction = Transaction.find(params[:id])
  end

  def bid_valorisation
    valorisation = 0
    @collectibles.each do |collectible|
      unless collectible.bids.highest.nil?
        return valorisation += collectible.bids.highest.bid_price
      end
    end
  end

end
