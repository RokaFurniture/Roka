class Admin::MaterialsController < ApplicationController
  before_action :set_material, only: [:edit, :update, :destroy]

  layout 'admin'

  def index
    @materials = Material.all.order(:name)
    @material = Material.new
  end

  def edit
  end

  def create
    @material = Material.new(material_params)
    respond_to do |format|
      if @material.save
        format.html { redirect_to admin_materials_path }
        format.js {}
      else
        render :new
      end
    end
  end

  def update
    respond_to do |format|
      if @material.update(material_params)
        format.html { redirect_to admin_materials_path }
        format.js {}
      else
        render :edit
      end
    end
  end

  def destroy
    respond_to do |format|
      format.html { redirect_to admin_materials_path }
      format.js {}
    end
    @material.destroy
  end

  private

  def set_material
    @material = Material.find(params[:id])
  end

  def material_params
    params.require(:material).permit!
  end
end
