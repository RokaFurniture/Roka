class Operator::InputMaterialsController < ApplicationController
  before_action :set_material, only: [:edit, :update, :destroy]

  layout 'operator'

  def new
    @input_material = InputMaterial.new(input_id: params[:input])
  end

  def create
    @input_material = InputMaterial.new(material_params)
    render :new && return unless @input_material.save
    @input_material.material.update(count: @input_material.material.count +
                                    @input_material.count)
  end

  def edit
    # @input = @input_material.product
  end

  def update
    render :edit unless @input_material.update(material_params)
  end

  def destroy
    # TODO: show error notification
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
