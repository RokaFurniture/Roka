class Admin::ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  layout 'admin'

  def index
    @product = Product.new
    @products = Product.all.order(:product_group_id)
  end

  def show
    @product_material = ProductMaterial.new
    @materials = ProductMaterial.materials(@product.id)
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

  def clone
    old = Product.find(params[:id])
    product = Product.create(old.attributes.reject do |k, _v|
      k == ('id' || 'image')
    end)
    ProductMaterial.where('product_id = ?', params[:id]).each do |material|
      @product_material = material.dup
      @product_material.product = product
      @product_material.save
    end
    redirect_to admin_product_path(product.id)
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit!
  end
end
