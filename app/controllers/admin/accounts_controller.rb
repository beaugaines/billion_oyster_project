class Admin::AccountsController < AdminController

  def index
    @accounts = Account.all
  end
  
  def new
    @account = Account.new
  end

  def create
    @account = Account.new(params[:account])
    if @account.save
      redirect_to @account, notice: 'Account created'
    else
      render :new, alert: 'Account creation failed'
    end
  end
  



end