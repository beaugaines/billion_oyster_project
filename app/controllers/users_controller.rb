class UsersController < ApplicationController

  before_action :ensure_user, only: [:show, :edit, :update]

  def show
    @user = User.friendly.find(params[:id])
  end

  def edit
    render
  end
  
  
  def update
    if @user.update_attributes(user_params)
      redirect_to user_path(@user), notice: 'Profile updated'
    else
      flash[:alert] = 'Profile update failed'
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :avatar, :city, :lat, :lon)
  end

  def ensure_user
    redirect_to root_path, alert: 'No such user' unless user
  end

  def user
    @user ||= User.friendly.find(params[:id])
  end

  helper_method :user
  
end