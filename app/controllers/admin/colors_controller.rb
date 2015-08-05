class Admin::ColorsController < ApplicationController
  before_action :set_color, only: [:edit, :update, :destroy]

  layout 'admin'

  def index
    @colors = Color.all.order(:name)
    @color = Color.new
  end

  def edit
  end

  def create
    @color = Color.new(color_params)
    respond_to do |format|
      if @color.save
        format.html { redirect_to admin_colors_path }
        format.js {}
      end
    end
  end

  def update
    respond_to do |format|
      if @color.update(color_params)
        format.html { redirect_to admin_colors_path }
        format.js {}
      end
    end
  end

  def destroy
    respond_to do |format|
      format.html { redirect_to admin_colors_path }
      format.js {}
    end
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
