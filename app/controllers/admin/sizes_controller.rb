class Admin::SizesController < ApplicationController
  before_action :set_size, only: [:edit, :update, :destroy]

  layout 'admin'

  def index
    @sizes = Size.all.order(:product_group_id)
    @size = Size.new
  end

  def edit
  end

  def create
    @size = Size.new(size_params)
    respond_to do |format|
      if @size.save
        format.html { redirect_to admin_sizes_path }
        format.js {}
      else
        render :new
      end
    end
  end

  def update
    respond_to do |format|
      if @size.update(size_params)
        format.html { redirect_to admin_sizes_path }
        format.js {}
      else
        render :edit
      end
    end
  end

  def destroy
    respond_to do |format|
      format.html { redirect_to admin_sizes_path }
      format.js {}
    end
    @size.destroy
  end

  private

  def set_size
    @size = Size.find(params[:id])
  end

  def size_params
    params.require(:size).permit!
  end
end
