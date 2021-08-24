class My::TransactionsController < ApplicationController

  def index
    @transactions = current_user.transactions
  end

  def show
    @transaction = Transaction.find(params[:id])
  end

end
