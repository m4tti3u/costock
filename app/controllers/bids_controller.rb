class BidsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :bids, only: [:show, :update]

  def create
    @bid = Bid.new(bids_params)
    @bid.user = current_user
    @bid.collectible = Collectible.find(collectible_params[:collectible_id])
    if @bid.save
      redirect_to my_transactions_path
    else
      render "collectible/show"
    end
  end

  def update
    @bid = Bid.find(params[:id])
    @bid.update(progress: 'done')
    redirect_to my_transactions_path
  end

  private

  def bids_params
    params.require(:bid).permit(:user_id, :bid_price, :progress)
  end
  def collectible_params
    params.permit(:collectible_id)
  end
end
