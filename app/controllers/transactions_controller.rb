class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
  end

  def show
    @transaction = Transaction.find(params[:id])
  end

  def new
    @transaction = Transaction.new
  end

  def edit
    @transactions = Transaction.find(params[:id])
  end

  def create
    @transaction = Transaction.new(params[:transaction])

    if @transaction.save
      flash[:notice] = 'Transaction was successfully created.'
      redirect_to(@transactions)
    else
      render :action => "new"
    end
  end

  def update
    @transaction = Transaction.find(params[:id])

    if @transaction.update_attributes(params[:transaction])
      flash[:notice] = 'Transaction was successfully updated.'
      redirect_to(@transaction)
    else
      render :action => "edit"
    end
  end

  def destroy
    @transaction = Transaction.find(params[:id])
    @transaction.destroy
    
    redirect_to(transactions_url)
  end
end
