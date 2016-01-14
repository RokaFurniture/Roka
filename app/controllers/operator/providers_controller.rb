class Operator::ProvidersController < ApplicationController
  before_action :set_provider, only: [:show, :edit, :update, :destroy, :object]

  def index
    @providers = Provider.all.order(:name)
    @provider = Provider.new
  end

  def new
    @provider = Provider.new
  end

  def show
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

  def object
    @provider
  end
  helper_method :object
end
