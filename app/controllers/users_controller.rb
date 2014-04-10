class UsersController < ApplicationController

  before_action :setup, only: [:show, :edit]

  def show
    render
  end

  def edit
    render
  end
  
  
  def update
  end

  private

  def setup
    @user = User.find(params[:id])
  end
  
end