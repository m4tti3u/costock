class My::AsksController < ApplicationController
before_action :find_ask, only: [ :show, :edit, :update, :destroy ]

def index
    @asks = current_user.asks
  end

  def show
  end

  def new
    @ask = Ask.new
    @nft = Nft.find(params[:nft_id])
    @collectible = Collectible.find(@nft.collectible_id)
  end

  def create
    @ask = Ask.new(ask_params)
    @nft = Nft.find(params[:nft_id])
    @ask.nft = @nft
    @ask.user = current_user
    @ask.progress = "pending"
    if @ask.save
      redirect_to my_transactions_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @ask.update(ask_params)
    redirect_to my_ask_path
  end

  def destroy
    @ask.destroy
    redirect_to my_ask_path
  end

  private

  def ask_params
    params.require(:ask).permit(:ask_price)
  end

  def find_ask
    @ask = Ask.find(params[:id])
  end

end
# ask /bids -7 cruds
