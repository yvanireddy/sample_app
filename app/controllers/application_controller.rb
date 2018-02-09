class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  private
  def after_sign_in_path_for(resource_or_scope)
 	users_path
  end
end
