class AsksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :asks, only: [:show, :update]

  def create
    @ask = Ask.new(asks_params)
    @ask.user = current_user
    @ask.collectible = Collectible.find(collectible_params[:collectible_id])
    if @ask.save
      redirect_to my_transactions_path
    else
      render "collectible/show"
    end
  end

  def update
    @ask = Ask.find(params[:id])
    #@transaction = Transaction.new(user: current_user, )
    @ask.update(progress: 'done')
    redirect_to my_transactions_path

  end

  private

  def asks_params
    params.require(:ask).permit(:user_id, :ask_price, :progress)
  end
  def collectible_params
    params.permit(:collectible_id)
  end
end
