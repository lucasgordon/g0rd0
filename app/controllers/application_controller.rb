class ApplicationController < ActionController::Base

  helper_method :current_user
  helper_method :lucas?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def lucas?
    current_user && current_user.email == "lucas.gordon@queensu.ca"
  end
end
