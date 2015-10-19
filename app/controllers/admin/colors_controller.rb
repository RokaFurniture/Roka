class Admin::ColorsController < ApplicationController
  before_action :set_color, only: [:edit, :update, :destroy]

  def index
    @colors = Color.all.order(:name)
  end

  def new
    @color = Color.new
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
end
