class WelcomeController < ApplicationController

  before_action :check_for_signed_in_user

  def index
    # render layout: 'welcome'
  end

  private

  def check_for_signed_in_user
    if current_user.present?
      redirect_to path_for_dashboard
    end
  end

  def path_for_dashboard
    if admin_signed_in?
      admin_dashboard_path
    else
      dashboard_path
    end
  end

  def admin_signed_in?
    current_user.admin?
  end
  
end