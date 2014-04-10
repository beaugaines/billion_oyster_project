class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end
  
  def update
    render
  end
  
end