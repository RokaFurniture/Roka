class SessionsController < ApplicationController
  skip_before_action :authorize

  def new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    render :new && return unless @user && @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect_to orders_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
