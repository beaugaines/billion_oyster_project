class Users::InvitationsController < Devise::InvitationsController
  before_action :authorize_admin!, only: [:new]

  def new
    super
  end

  def edit
    super
  end
  

end