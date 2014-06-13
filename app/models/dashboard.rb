class Dashboard

  def initialize user
    @user = user
  end

  attr_reader :user

  def owner
    user.email
  end
  
end
  