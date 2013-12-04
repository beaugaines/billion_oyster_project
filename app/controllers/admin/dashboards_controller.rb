class Admin::DashboardsController < Admin::BaseController

  def show
    @dashboard = Dashboard.new(current_user)
  end
end
  