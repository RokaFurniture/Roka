class Operator::OutputsController < ApplicationController
  before_action :set_output, only: [:show, :edit, :update, :destroy]

  def index
    @outputs = Output.all
  end

  def new
    @output = Output.new
  end

  def show
    @output_material = OutputMaterial.new
    @materials = OutputMaterial.materials(@output.id)
  end

  def edit
  end

  def create
    @output = Output.new(output_params)
    render :new unless @output.save
  end

  def update
    render :edit unless @output.update(output_params)
  end

  def destroy
    @output.destroy
    # TODO: show notification if can't delete item
  end

  private

  def set_output
    @output = Output.find(params[:id])
  end

  def output_params
    params.require(:output).permit!
  end
end
