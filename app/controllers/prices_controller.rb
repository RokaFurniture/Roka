class PricesController < ApplicationController
  before_action :set_price, only: [:edit, :update, :destroy]

  def index
    @prices = Price.all
    @price = Price.new
  end

  def new
  end

  def edit
  end

  def create
    @price = Price.new(price_params)
    render :new unless @price.save
  end

  def update
    render :edit unless @price.update(price_params)
  end

  def destroy
    @price.destroy
    # TODO: show error notification
  end

  private

  def set_price
    @price = Price.find(params[:id])
  end

  def price_params
    params.require(:price).permit!
  end
end
