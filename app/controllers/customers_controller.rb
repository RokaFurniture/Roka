class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy, :object]

  def index
    @customers = Customer.all
    @customer = Customer.new
  end

  def new
    @customer = Customer.new
  end

  def show
  end

  def edit
  end

  def create
    @customer = Customer.new(customer_params)
    render :new unless @customer.save
  end

  def update
    render :edit unless @customer.update(customer_params)
  end

  def destroy
    @customer.destroy
    # TODO: show error notification
  end

  private

  def set_customer
    @customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit!
  end

  def object
    @customer
  end
  helper_method :object
end
