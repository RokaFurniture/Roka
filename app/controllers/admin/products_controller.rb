class Admin::ProductsController < ApplicationController
  before_action :set_product, only: [:edit, :update, :destroy]

  layout 'admin'

  def index
    @product = Product.new
    @products = Product.all.order(:product_group_id)
  end

  def edit
  end

  def create
    @product = Product.new(product_params)
    respond_to do |format|
      if @product.save
        format.html { redirect_to admin_products_path }
        format.js {}
      end
    end
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to admin_products_path }
        format.js {}
      end
    end
  end

  def destroy
    respond_to do |format|
      format.html { redirect_to admin_products_path }
      format.js {}
    end
    @product.destroy
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit!
  end
end
