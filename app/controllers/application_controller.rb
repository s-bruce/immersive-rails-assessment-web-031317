class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def logged_in
    unless session[:user_id]
      redirect_to login_path
    end
  end
end
