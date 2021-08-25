class NftsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :nft, only: [:show, :edit, :update, :destroy]

  def index
    @nfts = Nft.all
  end

  def new
    @nft = Nft.new
  end

  def create
    @nft = Nft.new(nfts_params)
    if @nft.save
      redirect_to nft_path
    else
      render :new
    end
  end

  def show
    # @nft = Nft.find(params[:id])
  end

  def edit
    @nft = Nft.find(params[:id])
  end

  def update
    @nft.update(nfts_params)
    redirect_to nfts_path
  end

  def destroy
    @nft = Nft.find(params[:id])
    @nft.destroy
    redirect_to redirect_to nfts_path_path
  end

  private

  def nfts_params
    params.require(:nfts).permit(:collectible_id, :introduction_price, :current_price, :user_id)
  end

  def find_nft
    @nft = Nft.find(params[:id])
  end

end
