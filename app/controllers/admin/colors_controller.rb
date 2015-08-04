class Admin::ColorsController < ApplicationController
  before_action :set_color, only: [:show, :edit, :update, :destroy]

  layout 'admin'

  def index
    @colors = Color.all
    @color = Color.new
  end

  def show
  end

  def new
    @color = Color.new
  end

  def edit
  end

  def create
    @color = Color.new(color_params)
    if @color.save
      redirect_to admin_colors_path
    else
      render :new
    end
  end

  def update
    if @color.update(color_params)
      redirect_to admin_colors_path
    else
      render :edit
    end
  end

  def destroy
    @color.destroy
    redirect_to admin_colors_path
  end

  private

  def set_color
    @color = Color.find(params[:id])
  end

  def color_params
    params.require(:color).permit!
  end
end
