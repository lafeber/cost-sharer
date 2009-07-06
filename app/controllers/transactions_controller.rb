class TransactionsController < ApplicationController
  # GET /transactions
  # GET /transactions.xml
  def index
    @transactions = Transactions.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @transactions }
    end
  end

  # GET /transactions/1
  # GET /transactions/1.xml
  def show
    @transactions = Transactions.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @transactions }
    end
  end

  # GET /transactions/new
  # GET /transactions/new.xml
  def new
    @transactions = Transactions.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @transactions }
    end
  end

  # GET /transactions/1/edit
  def edit
    @transactions = Transactions.find(params[:id])
  end

  # POST /transactions
  # POST /transactions.xml
  def create
    @transactions = Transactions.new(params[:transactions])

    respond_to do |format|
      if @transactions.save
        flash[:notice] = 'Transactions was successfully created.'
        format.html { redirect_to(@transactions) }
        format.xml  { render :xml => @transactions, :status => :created, :location => @transactions }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @transactions.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /transactions/1
  # PUT /transactions/1.xml
  def update
    @transactions = Transactions.find(params[:id])

    respond_to do |format|
      if @transactions.update_attributes(params[:transactions])
        flash[:notice] = 'Transactions was successfully updated.'
        format.html { redirect_to(@transactions) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @transactions.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /transactions/1
  # DELETE /transactions/1.xml
  def destroy
    @transactions = Transactions.find(params[:id])
    @transactions.destroy

    respond_to do |format|
      format.html { redirect_to(transactions_url) }
      format.xml  { head :ok }
    end
  end
end
