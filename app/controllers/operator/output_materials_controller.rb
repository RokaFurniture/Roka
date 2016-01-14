class Operator::OutputMaterialsController < ApplicationController
  before_action :set_material, only: [:edit, :update, :destroy, :object]

  def new
    @output_material = OutputMaterial.new(output_id: params[:output])
  end

  def create
    @output_material = OutputMaterial.new(material_params)
    render(:new) && return unless @output_material.save
    @output_material.material.update(count: @output_material.material.count -
                                    @output_material.count)
  end

  def edit
  end

  def update
    render :edit unless @output_material.update(material_params)
  end

  def destroy
    # TODO: show notification if error
    @output_material.material.update(count: @output_material.material.count +
                                    @output_material.count)
    @output_material.destroy
  end

  private

  def set_material
    @output_material = OutputMaterial.find(params[:id])
  end

  def material_params
    params.require(:output_material).permit!
  end

  def object
    @output_material
  end
  helper_method :object
end
