class Admin::ProductGroupsController < ApplicationController
  before_action :set_group, only: [:edit, :update, :destroy, :object]

  def index
    @product_groups = ProductGroup.all.order(:name)
    @product_group = ProductGroup.new
  end

  def new
  end

  def edit
  end

  def create
    @product_group = ProductGroup.new(group_params)
    render :new unless @product_group.save
  end

  def update
    render :edit unless @product_group.update(group_params)
  end

  def destroy
    # TODO: show error notification
    @product_group.destroy
  end

  private

  def set_group
    @product_group = ProductGroup.find(params[:id])
  end

  def group_params
    params.require(:product_group).permit!
  end

  def object
    @product_group
  end
  helper_method :object
end
