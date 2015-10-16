class Admin::ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  skip_before_action :authorize

  layout 'admin'

  def index
    @products = Product.all.order(:product_group_id)
  end

  def show
    @materials = ProductMaterial.materials(@product.id)
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)
    render :new unless @product.save
  end

  def update
    render :edit unless @product.update(product_params)
  end

  def destroy
    # TODO: show error notification
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
