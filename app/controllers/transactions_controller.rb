class TransactionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_transaction, only: [:show, :edit, :update, :destroy]

  def index
    @transactions = Transaction.all
    @nfts = current_user.nfts
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    if @transaction.save
      redirect_to my_transactions_path
    else
      render :new
    end
  end

  def edit
    @transaction = Transaction.find(params[:id])
  end

  def update
    @transaction.update(transactions_params)
    redirect_to my_transactions_path
  end

  private

  def transaction_params
    params.require(:transactions).permit(:user_id, :nft_if, :acquisition_price)
  end

  def find_transaction
    @transaction = Transaction.find(params[:id])
  end
end
