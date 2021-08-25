class My::BidsController < ApplicationController
def index
    @bids = current_user.bids
  end

  def show
  end

  def new
    @nft = Nft.find(params[:nft_id])
    @bid = Bid.new
    @collectible = Collectible.find(@nft.collectible_id)
    @user = current_user
  end

  def create
    @nft = Nft.find(params[:nft_id])
    @bid = Bid.new(bid_params)
    @bid.nft = @nft
    @bid.user = current_user
    @bid.progress = "pending"
    if @bid.save
      redirect_to my_transactions_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @bid.update(bid_params)
    redirect_to my_bid_path
  end

  def destroy
    @bid.destroy
    redirect_to my_bid_path
  end

  private

  def bid_params
    params.require(:bid).permit(:bid_price)
  end

  def find_bid
    @bid = Bid.find(params[:id])
  end


end
