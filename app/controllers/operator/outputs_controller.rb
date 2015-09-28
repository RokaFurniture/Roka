class Operator::OutputsController < ApplicationController
  before_action :set_output, only: [:show, :edit, :update, :destroy]

  layout 'operator'

  def index
    @output = Output.new
    @outputs = Output.all
  end

  def new
  end

  def show
    @output_material = OutputMaterial.new
    @materials = OutputMaterial.materials(@output.id)
  end

  def edit
  end

  def create
    @output = Output.new(output_params)
    respond_to do |format|
      if @output.save
        format.html { redirect_to admin_outputs_path }
        format.js {}
      end
    end
  end

  def update
    respond_to do |format|
      if @output.update(output_params)
        format.html { redirect_to admin_outputs_path }
        format.js {}
      end
    end
  end

  def destroy
    respond_to do |format|
      format.html { redirect_to admin_outputs_path }
      format.js {}
    end
    @output.destroy
  end

  private

  def set_output
    @output = Output.find(params[:id])
  end

  def output_params
    params.require(:output).permit!
  end
end
