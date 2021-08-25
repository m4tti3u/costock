class BidsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :bids, only: [:show, :update,]

  #def edit
    #@bid = Bid.find(params[:id])
  #end

  def new
    @bid = Bid.new
  end

  def update
    @bid = Bid.find(params[:id])
    @bid.update(bids_params)
    redirect_to my_transactions_path
  end

  private

  def bids_params
    params.require(:bids).permit(:nft_id, :user_id, :bid_price, :progress)
  end
end
