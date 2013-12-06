class Account < ActiveRecord::Base
  belongs_to :user

  def owner
    user.email
  end
  
end
