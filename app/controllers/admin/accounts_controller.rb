class Admin::AccountsController < AdminController

  def new
    @account = Account.new
  end

  def index
    @accounts = Account.all
  end
  

end