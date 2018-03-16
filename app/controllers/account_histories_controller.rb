class AccountHistoriesController < ApplicationController
  before_action :set_account_history, only: [:show, :edit, :update, :destroy]

  # GET /account_histories
  # GET /account_histories.json
  def index
    @account_histories = AccountHistory.all
  end

  # GET /account_histories/1
  # GET /account_histories/1.json
  def show
  end

  # GET /account_histories/new
  def new
    @account_history = AccountHistory.new
  end

  # GET /account_histories/1/edit
  def edit
  end

  # POST /account_histories
  # POST /account_histories.json
  def create
    @account_history = AccountHistory.new(account_history_params)

    respond_to do |format|
      if @account_history.save
        format.html { redirect_to @account_history, notice: 'Account history was successfully created.' }
        format.json { render :show, status: :created, location: @account_history }
      else
        format.html { render :new }
        format.json { render json: @account_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /account_histories/1
  # PATCH/PUT /account_histories/1.json
  def update
    respond_to do |format|
      if @account_history.update(account_history_params)
        format.html { redirect_to @account_history, notice: 'Account history was successfully updated.' }
        format.json { render :show, status: :ok, location: @account_history }
      else
        format.html { render :edit }
        format.json { render json: @account_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_histories/1
  # DELETE /account_histories/1.json
  def destroy
    @account_history.destroy
    respond_to do |format|
      format.html { redirect_to account_histories_url, notice: 'Account history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_history
      @account_history = AccountHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_history_params
      params.require(:account_history).permit(:account_id, :credit_rating)
    end
end
