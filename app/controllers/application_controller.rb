class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authorize

  protected

  def authorize
    redirect_to new_sessions_path unless session[:user_id]
  end

  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
