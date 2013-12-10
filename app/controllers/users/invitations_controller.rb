class Users::InvitationsController < Devise::InvitationsController
  before_action :authorize_admin!

  def new
    super
  end

end