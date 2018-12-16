class BuysController < ApplicationController

  def index
    @buys = Buy.all
  end

  def show
    @buy = Buy.find(params[:id])
  end

  def new
    @buy = Buy.new
  end

  def create
    @buy = Buy.new(buy_params)
    @buy.user = current_user
    @buy.price = Buy.buy_price
    @buy.status = 0
    @buy.save
    redirect_to buy_path(@buy)
  end

  def edit
    @buy = Buy.find(params[:id])
  end

  def update
    @buy = Buy.find(params[:id])
    @buy.update(buy_params)
  end

  private

  def buy_params
    params.require(:buy).permit(:quantity)
  end


end
