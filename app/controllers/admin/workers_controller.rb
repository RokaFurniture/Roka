class Admin::WorkersController < ApplicationController
  before_action :require_admin
  before_action :set_worker, only: [:edit, :update, :destroy]

  def new
    @worker = Worker.new
  end

  def edit
  end

  def create
    @worker = Worker.new(worker_params)
    render :new unless @worker.save
  end

  def update
    render :edit unless @worker.update(worker_params)
  end

  def destroy
    @worker.destroy
  end

  private

  def set_worker
    @worker = Worker.find(params[:id])
  end

  def worker_params
    params.require(:worker).permit!
  end
end