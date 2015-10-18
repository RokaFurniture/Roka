class Operator::ProvidersController < ApplicationController
  before_action :set_provider, only: [:edit, :update, :destroy]

  def index
    @providers = Provider.all.order(:name)
  end

  def new
    @provider = Provider.new
  end

  def edit
  end

  def create
    @provider = Provider.new(provider_params)
    render :new unless @provider.save
  end

  def update
    render :edit unless @provider.update(provider_params)
  end

  def destroy
    # TODO: show error notification
    @provider.destroy
  end

  private

  def set_provider
    @provider = Provider.find(params[:id])
  end

  def provider_params
    params.require(:provider).permit!
  end
end
