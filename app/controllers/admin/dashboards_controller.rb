class Admin::DashboardsController < AdminController

  def show
    @dashboard = Dashboard.new(current_user)
    render layout: 'admin'
  end
end
  