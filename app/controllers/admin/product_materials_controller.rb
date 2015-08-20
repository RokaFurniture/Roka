class Admin::ProductMaterialsController < ApplicationController
  before_action :set_material, only: [:edit, :update, :destroy]

  layout 'admin'

  def edit
    @product = @product_material.product
  end

  def create
    @product_material = ProductMaterial.new(material_params)
    respond_to do |format|
      if @product_material.save
        format.html { redirect_to admin_products_path }
        format.js {}
      end
    end
  end

  def update
    respond_to do |format|
      if @product_material.update(material_params)
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
