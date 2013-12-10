class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

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
    accept_user_invitation_path
  end
  

end

