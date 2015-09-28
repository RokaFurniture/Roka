class Operator::OutputMaterialsController < ApplicationController
  before_action :set_material, only: [:edit, :update, :destroy]

  layout 'operator'

  def edit
  end

  def create
    @output_material = OutputMaterial.new(material_params)
    @output_material.save
    @output_material.material.update(count: @output_material.material.count -
                                    @output_material.count)
  end

  def update
    @output_material.update(material_params)
  end

  def destroy
    respond_to do |format|
      format.html { redirect_to operator_outputs_path }
      format.js {}
    end
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
end
