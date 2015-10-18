class OrdersController < ApplicationController
  before_action :set_order, only: [:edit, :update, :destroy]

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def edit
  end

  def create
    @order = Order.new(order_params)
    render :new unless @order.save
  end

  def update
    render :edit unless @order.update(order_params)
  end

  def destroy
    @order.destroy
    # TODO: show error notification
  end

  private

  def require_admin
    current_user.admin? ? return : redirect_to(root_url)
  end

  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit!
  end
end
