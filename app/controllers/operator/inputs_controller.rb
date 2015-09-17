class Operator::InputsController < ApplicationController
  before_action :set_input, only: [:show, :edit, :update, :destroy]

  layout 'operator'

  def index
    @input = Input.new
    @inputs = Input.all
  end

  def new
    @providers = Provider.all
  end

  def show
  end

  def edit
  end

  def create
    @input = Input.new(input_params)
    respond_to do |format|
      if @input.save
        format.html { redirect_to admin_inputs_path }
        format.js {}
      end
    end
  end

  def update
    respond_to do |format|
      if @input.update(input_params)
        format.html { redirect_to admin_inputs_path }
        format.js {}
      end
    end
  end

  def destroy
    respond_to do |format|
      format.html { redirect_to admin_inputs_path }
      format.js {}
    end
    @input.destroy
  end

  private

  def set_input
    @input = Input.find(params[:id])
  end

  def input_params
    params.require(:input).permit!
  end
end
