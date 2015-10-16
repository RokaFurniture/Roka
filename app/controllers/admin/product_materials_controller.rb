class Admin::ProductMaterialsController < ApplicationController
  before_action :set_material, only: [:edit, :update, :destroy]

  layout 'admin'

  def edit
    @product = @product_material.product
  end

  def new
    @product_material = ProductMaterial.new(product_id: params[:product_id])
  end

  def create
    @product_material = ProductMaterial.new(material_params)
    render :new unless @product_material.save
  end

  def update
    render :edit unless @product_material.update(material_params)
  end

  def destroy
    # TODO: show error notification
    @product_material.destroy
  end

  private

  def set_material
    @product_material = ProductMaterial.find(params[:id])
  end

  def material_params
    params.require(:product_material).permit!
  end
end
