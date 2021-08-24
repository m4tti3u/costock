class TransactionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_transaction, only: [:show, :edit, :update, :destroy]

  def index
    @transactions = Transaction.all
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transactions_params)
    if @transactions.save
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
    redirect_to my_transaction_path
  end

  private

  def transaction_params
    params.require(:transactions).permit(:user_id, :nft_if, :acquisition_price)
  end

  def find_transaction
    @transaction = Transaction.find(params[:id])
  end
end
