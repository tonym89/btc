class BuysController < ApplicationController

  def index
    @buys = policy_scope(Buy)
  end

  def show
    @buy = Buy.find(params[:id])
    authorize @buy
  end

  def new
    @buy = Buy.new
    authorize @buy
  end

  def create
    @buy = Buy.new(buy_params)
    @buy.user = current_user

    # @buy.price = Buy.buy_price

    if @buy.token == 1
    @buy.price = Buy.btc_buy_price
    elsif @buy.token == 2
    @buy.price = Buy.eth_buy_price
    elsif @buy.token == 3
    @buy.price = Buy.bch_buy_price
    elsif @buy.token == 4
    @buy.price = Buy.xrp_buy_price
    elsif @buy.token == 5
    @buy.price = Buy.eos_buy_price
    else
    @buy.price = 999999999
    end

    @buy.status = 0
    authorize @buy
    @buy.save
    redirect_to buy_path(@buy)
  end

  def edit
    @buy = Buy.find(params[:id])
    authorize @buy
  end

  def update
    @buy = Buy.find(params[:id])
    @buy.update(buy_params)
  end

  private

  def buy_params
    params.require(:buy).permit(:quantity, :token)
  end


end
