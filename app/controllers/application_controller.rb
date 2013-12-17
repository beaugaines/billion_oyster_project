class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def authorize_admin!
    redirect_to dashboard_path unless current_user.admin?
  end

  def after_sign_in_path_for resource
    if current_user.admin?
      admin_dashboard_path
    else
      dashboard_path
    end
  end

  def after_invite_path_for resource
    if current_user.moderator?
      new_account_path
    else
      accept_user_invitation_path
    end
  end


  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:accept_invitation) do |u|
      u.permit(:first_name, :last_name, :password, :password_confirmation,
               :invitation_token, :moderator, :account_id,
               account_attributes: [:name, :city, :full_address, :lat, :lon, ])
    end
  end
  
  

end
