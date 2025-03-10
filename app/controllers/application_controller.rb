class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def welcome
    logged_in?
  end 

  def current_user 
    session[:name] ||= nil
  end 

  private 

  def logged_in?
    redirect_to controller: 'sessions', action: 'new' unless current_user
  end 
end
