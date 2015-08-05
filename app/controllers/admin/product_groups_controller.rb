class Admin::ProductGroupsController < ApplicationController
  before_action :set_group, only: [:edit, :update, :destroy]

  layout 'admin'

  def index
    @product_group = ProductGroup.new
    @product_groups = ProductGroup.all.order(:name)
  end

  def edit
  end

  def create
    @product_group = ProductGroup.new(group_params)
    respond_to do |format|
      if @product_group.save
        format.html { redirect_to admin_products_path }
        format.js {}
      else
        render :new
      end
    end
  end

  def update
    respond_to do |format|
      if @product_group.update(group_params)
        format.html { redirect_to admin_products_path }
        format.js {}
      else
        format.js { render :error, locals: { error_message: t('form.error') } }
      end
    end
  end

  def destroy
    respond_to do |format|
      format.html { redirect_to admin_products_path }
      format.js {}
    end
    @product_group.destroy
  end

  private

  def set_group
    @product_group = ProductGroup.find(params[:id])
  end

  def group_params
    params.require(:product_group).permit!
  end
end
