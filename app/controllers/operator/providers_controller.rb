class Operator::ProvidersController < ApplicationController
  layout 'operator'

  before_action :set_provider, only: [:edit, :update, :destroy]

  def index
    @provider = Provider.new
    @providers = Provider.all.order(:name)
  end

  def edit
  end

  def create
    @provider = Provider.new(provider_params)
    respond_to do |format|
      if @provider.save
        format.html { redirect_to operator_providers_path }
        format.js {}
      else
        render :new
      end
    end
  end

  def update
    respond_to do |format|
      if @provider.update(provider_params)
        format.html { redirect_to operator_providers_path }
        format.js {}
      else
        render :edit
      end
    end
  end

  def destroy
    respond_to do |format|
      format.html { redirect_to operator_providers_path }
      format.js {}
    end
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
