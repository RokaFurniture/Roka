class Admin::MaterialsController < ApplicationController
  before_action :set_material, only: [:edit, :update, :destroy]

  def index
    @materials = Material.all.order(:name)
    @material = Material.new
  end

  def new
  end

  def edit
  end

  def create
    @material = Material.new(material_params)
    render :new unless @material.save
  end

  def update
    render :edit unless @material.update(material_params)
  end

  def destroy
    # TODO: show error notification
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
