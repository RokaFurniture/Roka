class Admin::ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  skip_before_action :authorize

  def index
    @product = Product.new
    @products = Product.all.order(:product_group_id)
    @product_groups = ProductGroup.all
  end

  def show
    @materials = ProductMaterial.materials(@product.id)
  end

  def new
    @product = Product.new(product_group_id: params[:product_group])
  end

  def edit
  end

  def create
    @product = Product.new(product_params)
    # @product = Product.new(name: params[:product][:name],
                           # size_id: params[:product][:size_id],
                           # product_group: params[:product_group])
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
