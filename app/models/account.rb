class Account < ActiveRecord::Base
  belongs_to :user

  def owner
<<<<<<< HEAD
    user.email || user.name
=======
    user.email
>>>>>>> develop
  end
  
end
