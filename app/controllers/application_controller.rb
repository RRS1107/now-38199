class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :staff_code, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:staff_code, :password ])
  end
end