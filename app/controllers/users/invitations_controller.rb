class Users::InvitationsController < Devise::InvitationsController
  before_action :authorize_admin!, only: [:new]

  def new
    super
  end

  def edit
    super
  end

  # private

  # def update_resource_params
  #   params.require(:user).permit(:password, :password_confirmation, :user, :name, :email)
  # end

end