class Admin::SizesController < ApplicationController
  before_action :set_size, only: [:edit, :update, :destroy, :object]

  def index
    @sizes = Size.all.order(:product_group_id)
    @size = Size.new
    @product_groups = ProductGroup.all
  end

  def new
    @size = Size.new
  end

  def edit
  end

  def create
    @size = Size.new(size_params)
    render :new unless @size.save
  end

  def update
    render :edit unless @size.update(size_params)
  end

  def destroy
    # TODO: show error notification
    @size.destroy
  end

  private

  def set_size
    @size = Size.find(params[:id])
  end

  def size_params
    params.require(:size).permit!
  end

  def object
    @size
  end
  helper_method :object
end
