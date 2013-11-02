class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :configure_permitted_parameters, if: :devise_controller?


  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :first_name << :last_name << :phone << :age << :disabilities << :volunteer_info << :type_of_participant << :bkbs_member << :belay_certified << :emergency_contact_name << :emergency_contact_phone << :has_shoes << :has_harness << :admin
  end
end

