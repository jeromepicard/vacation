class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def current_company
    @current_company ||= Company.find_by_site_path(request.subdomain)
  end
  
  helper_method :current_company
end
