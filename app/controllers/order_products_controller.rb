class OrderProductsController < ApplicationController
  before_action :set_product, only: [:edit, :update, :destroy]

  def new
    @order_product = OrderProduct.new(order_id: params[:order_id])
  end

  def create
    @order_product = OrderProduct.new(order_params)
    render(:new) && return unless @order_product.save
  end

  def edit
    # TODO: add code here
  end

  def update
    render :edit unless @order_product.update(order_params)
  end

  def destroy
    # TODO: show notification if error
    @order_product.destroy
  end

  private

  def set_product
    @order_product = OrderProduct.find(params[:id])
  end

  def order_params
    params.require(:order_product).permit!
  end
end
