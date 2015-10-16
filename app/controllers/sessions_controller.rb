class SessionsController < ApplicationController
  skip_before_action :authorize

  def new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.admin? && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to admin_users_path
    elsif @user && @user.manager? && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to 'orders_path' # TODO: chacnge link to correct
    elsif @user && @user.operator? && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to 'storage_path' # TODO: chacnge link to correct
    else
      redirect_to new_sessions_path, alert: t('invalid_credentials')
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
