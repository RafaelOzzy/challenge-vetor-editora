class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :cpf, :date_of_birth, :pschologist, :patient])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :cpf, :date_of_birth, :pschologist, :patient])
  end

  protected

  def after_sign_in_path_for(_resource)
    instruments_path
  end
end
