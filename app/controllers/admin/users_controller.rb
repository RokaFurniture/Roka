class Admin::UsersController < ApplicationController
  before_action :require_admin
  before_action :set_user, only: [:edit, :update, :destroy, :object]

  def index
    @users = User.where.not(post: 'admin').order(:post)
    @user = User.new
  end

  def new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    render :new unless @user.save
  end

  def update
    render :edit unless @user.update(user_params)
  end

  def destroy
    @user.destroy
    # TODO: show error notification
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit!
  end

  def object
    @user
  end
  helper_method :object
end
