class Admin::ColorsController < ApplicationController
  before_action :set_color, only: [:edit, :update, :destroy, :object]

  def index
    @colors = Color.all.order(:name)
    @color = Color.new
  end

  def new
  end

  def edit
  end

  def create
    @color = Color.new(color_params)
    render :new unless @color.save
  end

  def update
    render :edit unless @color.update(color_params)
  end

  def destroy
    # TODO: show error notification
    @color.destroy
  end

  private

  def set_color
    @color = Color.find(params[:id])
  end

  def color_params
    params.require(:color).permit!
  end

  def object
    @color
  end
  helper_method :object
end
