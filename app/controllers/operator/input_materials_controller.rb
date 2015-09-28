class Operator::InputMaterialsController < ApplicationController
  before_action :set_material, only: [:edit, :update, :destroy]

  layout 'operator'

  def edit
    # @input = @input_material.product
  end

  def create
    @input_material = InputMaterial.new(material_params)
    @input_material.save
    @input_material.material.update(count: @input_material.material.count +
                                    @input_material.count)
  end

  def update
    @input_material.update(material_params)
  end

  def destroy
    respond_to do |format|
      format.html { redirect_to operator_inputs_path }
      format.js {}
    end
    @input_material.material.update(count: @input_material.material.count -
                                    @input_material.count)
    @input_material.destroy
  end

  private

  def set_material
    @input_material = InputMaterial.find(params[:id])
  end

  def material_params
    params.require(:input_material).permit!
  end
end
