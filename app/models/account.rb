class Account < ActiveRecord::Base
  belongs_to :user

  def owner_email
    user.email
  end

  def owner_name
    user.full_name
  end

  def owner_gravatar
    user.gravatar_url
  end
  
  
  
end
