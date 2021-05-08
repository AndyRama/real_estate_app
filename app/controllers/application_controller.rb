class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  # include Pundit

  # after_action :verify_authorized, except: :index, unless: :skip_pundit?
  # after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  protected

  def configure_permitted_parameters
    @show_sidebar = true if user_signed_in?
    @properties = current_user.properties.all if user_signed_in?

    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name image cover_image])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name url image cover_image company number details])

    # def skip_pundit?
    #   devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
    # end
  end
end
