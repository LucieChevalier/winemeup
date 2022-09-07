class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name address postal_code city])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name address postal_code city])
  end

  def after_sign_up_path(resource)
    new_survey_url
  end

  def after_sign_in_path_for(resource)
    if current_user.surveys == []
      new_user_survey_path(current_user)
    else
      events_url
    end
  end
end
