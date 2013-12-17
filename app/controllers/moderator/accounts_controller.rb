class Moderator::AccountsController < ApplicationController

  def index
    @accounts = Account.all
  end
  
  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params.merge!(user_id: current_user.id))
    if @account.save
      redirect_to [:moderator, @account], notice: 'Account created'
    else
      render :new, alert: 'Account creation failed'
    end
  end

  def show
    @account = Account.find(params[:id])
  end
  

  private

  def account_params
    params.require(:account).permit(:name, :city, :full_address, :lat, :lon, :user_id)
  end
  
end