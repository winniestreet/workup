class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :null_session

  helper_method :resource_name, :resource, :devise_mapping

  def resource_name
    :owner || :worker
  end

  def resource
    @resource ||= Owner.new ||= Worker.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:owner || :worker]
  end

  protected

  def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname, :photo])
   devise_parameter_sanitizer.permit(:account_update, keys: [:firstname, :lastname, :photo])
  end
end
