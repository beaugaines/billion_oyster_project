class Admin::AccountsController < AdminController

  def index
    @accounts = Account.all
  end
  
  def new
    @account = Account.new
    @users = User.where.not(id: current_user.id)
  end

  def create
    @account = Account.new(account_params)
    if @account.save
      redirect_to [:admin, @account], notice: 'Account created'
    else
      render :new, alert: 'Account creation failed'
    end
  end

  def show
    @account = Account.find(params[:id])
  end
  

  private

  def account_params
    params.require(:account).permit(:name, :city, :full_address, :lat, :lon, :book_id)
  end
  
end