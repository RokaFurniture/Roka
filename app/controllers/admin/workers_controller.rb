class Admin::WorkersController < ApplicationController
  before_action :require_admin
  before_action :set_worker, only: [:edit, :update, :destroy, :object]

  def index
    @workers = Worker.all
    @worker = Worker.new
  end

  def new
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

  def object
    @worker
  end
  helper_method :object
end
