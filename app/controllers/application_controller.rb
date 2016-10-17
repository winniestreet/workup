class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

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
end
