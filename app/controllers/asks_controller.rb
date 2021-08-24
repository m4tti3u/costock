class AsksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :asks, only: [:show, :update,]

  #def edit
    #@ask = Ask.find(params[:id])
  #end

  def update
   @ask = Ask.find(params[:id])
    @ask.update(asks_params)
    redirect_to my_transactions_path
  end

  private

  def asks_params
    params.require(:bids).permit(:nft_id, :user_id, :ask_price, :progress)
  end
end
