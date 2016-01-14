class Operator::InputsController < ApplicationController
  before_action :set_input, only: [:show, :edit, :update, :destroy, :object]

  def index
    @inputs = Input.all
    @input = Input.new
  end

  def new
    @input = Input.new
    @providers = Provider.all
  end

  def create
    @input = Input.new(input_params)
    render :new unless @input.save
  end

  def show
    @input_material = InputMaterial.new(input_id: @input.id)
    @materials = InputMaterial.materials(@input.id)
  end

  def edit
  end

  def update
    render :edit unless @input.update(input_params)
  end

  def destroy
    # TODO: show error notification
    @input.destroy
  end

  private

  def set_input
    @input = Input.find(params[:id])
  end

  def input_params
    params.require(:input).permit!
  end

  def object
    @input
  end
  helper_method :object
end
